<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Ecommerce\Enums\GlobalOptionEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class GlobalOptionRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => 'required',
            'option_type' => [
                Rule::requiredIf(function () {
                    return $this->input('option_type') == GlobalOptionEnum::NA;
                }),
            ],
        ];
    }
}
