<?php



public class Content() {

    public string $rawContent;

    public function setContent($enteringContent) {
        $this->rawContent = $enteringContent;
    }

    public static function withContent(string $content) {
        $instance = new self();
        $instance->setContent($content);
        return $instance;
    }

}