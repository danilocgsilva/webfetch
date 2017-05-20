<?php

namespace webfetch\webfetch;

class Content {

    public $rawContent;

    public function setContent($enteringContent) {
        $this->rawContent = $enteringContent;
    }

    public static function withContent($content) {
        $instance = new self();
        $instance->setContent($content);
        return $instance;
    }

}