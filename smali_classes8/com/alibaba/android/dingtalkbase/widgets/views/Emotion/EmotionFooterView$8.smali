.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;
.super Landroid/widget/BaseAdapter;
.source "EmotionFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 451
    const/4 v0, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->b:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 448
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 455
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckk;

    .line 456
    .local v2, "m":Lckk;
    if-eqz v2, :cond_4

    .line 457
    if-nez p2, :cond_0

    .line 458
    new-instance p2, Landroid/widget/ImageView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 459
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 460
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->b:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->b:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->b:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->b:I

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 462
    sget v3, Lcig$e;->emotion_bg_action_btn_bg:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 464
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Lckk;->b:I

    if-lez v3, :cond_2

    move-object v3, p2

    .line 465
    check-cast v3, Landroid/widget/ImageView;

    iget v4, v2, Lckk;->b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->m(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 474
    .local v0, "currentPage":I
    if-ne v0, p1, :cond_3

    .line 475
    invoke-virtual {p2, v8}, Landroid/view/View;->setSelected(Z)V

    .line 479
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    iget-object v3, v2, Lckk;->g:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p2, v8}, Landroid/view/View;->setFocusable(Z)V

    move-object v3, p2

    .line 485
    .end local v0    # "currentPage":I
    :goto_2
    return-object v3

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 468
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {v4, v3, v7, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 470
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->o(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, v2, Lckk;->a:Ljava/lang/String;

    invoke-interface {v4, v3, v5, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 477
    .restart local v0    # "currentPage":I
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 485
    .end local v0    # "currentPage":I
    :cond_4
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method
