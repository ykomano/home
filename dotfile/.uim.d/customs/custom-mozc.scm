(define mozc-show-segment-separator? #f)
(define mozc-segment-separator "|")
(define mozc-widgets '(widget_mozc_input_mode widget_mozc_kana_input_method widget_mozc_tool))
(define default-widget_mozc_input_mode 'action_mozc_direct)
(define mozc-input-mode-actions '(action_mozc_direct action_mozc_hiragana action_mozc_katakana action_mozc_halfkana action_mozc_halfwidth_alnum action_mozc_fullwidth_alnum))
(define default-widget_mozc_kana_input_method 'action_mozc_roma)
(define mozc-kana-input-method-actions '(action_mozc_roma action_mozc_kana))
(define mozc-use-with-vi? #t)
(define mozc-use-context-aware-conversion? #f)
(define mozc-keyboard-type-for-kana-input-method 'us-keyboard)
