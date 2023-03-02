<?php

namespace Botble\Slug\Listeners;

use Botble\Base\Events\DeletedContentEvent;
use Botble\Slug\Repositories\Interfaces\SlugInterface;
use Exception;
use SlugHelper;

class DeletedContentListener
{
    protected SlugInterface $slugRepository;

    public function __construct(SlugInterface $slugRepository)
    {
        $this->slugRepository = $slugRepository;
    }

    public function handle(DeletedContentEvent $event): void
    {
        if (SlugHelper::isSupportedModel(get_class($event->data))) {
            try {
                $this->slugRepository->deleteBy([
                    'reference_id' => $event->data->id,
                    'reference_type' => get_class($event->data),
                ]);
            } catch (Exception $exception) {
                info($exception->getMessage());
            }
        }
    }
}
