This is a package of a AutoLayout framework!
---------
### Is also very simple to use,With only two documents.

	ZLAutoLayout.h
	------
	+ (instancetype) instanceAutoLayoutView;
        /**
         *  frame transfrom AutoLayout
         */
        - (void)setAutoLayout:(BOOL)layout;
        - (BOOL)isAutoLayout;

        /**
         *  Current view EqualTo superView autoLayout.
         *
         *  @param direction    ZLAutoLayoutDirection
         */
        - (void)autoPinSuperViewDirection:(ZLAutoLayoutDirection)direction;

        /**
         *  Current view EqualTo superView autoLayout + inset.
         *
         *  @param direction    ZLAutoLayoutDirection
         *  @param withInset    Inset
         */
        - (void)autoPinSuperViewDirection:(ZLAutoLayoutDirection)direction withInset:(CGFloat)inset;

        /**
         *  Current view EqualTo ofView autoLayout.
         *
         *  @param direction    ZLAutoLayoutDirection
         *  @param toDircetion  OfView ZLAutoLayoutDirection
         */
        - (void)autoPinDirection:(ZLAutoLayoutDirection)direction toPinDirection:(ZLAutoLayoutDirection)toDircetion ofView:(UIView *)view;

        /**
         *  Current view EqualTo ofView autoLayout + inset.
         *
         *  @param direction    ZLAutoLayoutDirection
         *  @param toDircetion  OfView ZLAutoLayoutDirection
         *  @param withInset    Inset
         */
        - (void)autoPinDirection:(ZLAutoLayoutDirection)direction toPinDirection:(ZLAutoLayoutDirection)toDircetion ofView:(UIView *)view withInset:(CGFloat)inset;

        /**
         *  Set view width && height
         */
        - (void)autoSetViewSize:(CGSize)size;
        - (void)autoSetViewSizeWidthOrHeight:(ZLAutoLayoutSize)alSize withInset:(CGFloat)inset;

        /**
         *  Set view width || height -> ofView
         *
         *  @param alSize ZLAutoLayoutSize
         *  @param ofView ofView
         */
        - (void)autoSetViewSizeWidthOrHeight:(ZLAutoLayoutSize)alSize ofView:(UIView *)ofView;

        /**
         *  Set view -> superView centerX/Y + inset(options)
         *
         *  @param align ZLAutoLayoutAlign
         */
        - (void)autoSetAlignToSuperView:(ZLAutoLayoutAlign)align;
        - (void)autoSetAlignToSuperView:(ZLAutoLayoutAlign)align withInset:(CGFloat)inset;

        /**
         *  Set view -> ofView centerX/Y + inset(options)
         *
         *  @param align ZLAutoLayoutAlign
         */
        - (void)autoSetAlign:(ZLAutoLayoutAlign)align ofView:(UIView *)ofView;
        - (void)autoSetAlign:(ZLAutoLayoutAlign)align ofView:(UIView *)ofView withInset:(CGFloat)inset;

        /**
         *  Equal view to superView autoLayout
         */
        - (void)autoEqualToSuperViewAutoLayouts;
