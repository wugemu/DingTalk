.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private final mTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 552
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 553
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 554
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$200(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    .line 558
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$300(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v3

    .line 557
    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;IIII)V

    .line 559
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setGravity(I)V

    .line 560
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->update()V

    .line 561
    return-void
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "defaultColor"    # I
    .param p2, "selectedColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    new-array v1, v2, [[I

    .line 620
    .local v1, "states":[[I
    new-array v0, v2, [I

    .line 623
    .local v0, "colors":[I
    sget-object v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->SELECTED_STATE_SET:[I

    aput-object v2, v1, v3

    .line 624
    aput p2, v0, v3

    .line 628
    sget-object v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->EMPTY_STATE_SET:[I

    aput-object v2, v1, v4

    .line 629
    aput p1, v0, v4

    .line 632
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method public getTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 579
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 581
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$400(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 584
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$400(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    .line 583
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$500(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$500(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 588
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$500(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v0

    .line 587
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 566
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 567
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 568
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 570
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 574
    :cond_0
    return-void

    .line 565
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x2

    .line 593
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTab:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 595
    .local v1, "tab":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 597
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    .line 598
    .local v0, "hasText":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 599
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 600
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$600(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 602
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 603
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 605
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->access$700(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I

    move-result v6

    .line 604
    invoke-direct {p0, v5, v6}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 607
    invoke-virtual {p0, v3, v7, v7}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->addView(Landroid/view/View;II)V

    .line 608
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 610
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    :cond_1
    :goto_1
    return-void

    .end local v0    # "hasText":Z
    :cond_2
    move v0, v4

    .line 597
    goto :goto_0

    .line 612
    .restart local v0    # "hasText":Z
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 613
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
