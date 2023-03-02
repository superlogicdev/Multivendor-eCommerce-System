<?php

namespace Theme\Martfury\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Str;
use RvMedia;

class PostResource extends JsonResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'url' => $this->url,
            'description' => Str::words($this->description, 35),
            'image' => RvMedia::getImageUrl($this->image, 'small', false, RvMedia::getDefaultImage()),
            'created_at' => $this->created_at->translatedFormat('M d, Y'),
            'views' => number_format($this->views) . ' ' . __('Views'),
        ];
    }
}
