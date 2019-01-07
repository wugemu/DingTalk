.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;
.super Lgl;
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

.field private c:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    const/4 v1, 0x0

    .line 285
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 287
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->b:I

    .line 288
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->c:I

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 333
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 334
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 340
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v5, -0x1

    .line 306
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;I)Lckk;

    move-result-object v2

    .line 307
    .local v2, "model":Lckk;
    if-eqz v2, :cond_6

    .line 308
    iget v3, v2, Lckk;->j:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 309
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "emotionListView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 312
    iget v3, v2, Lckk;->e:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->b:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->b:I

    .line 1056
    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;->a:Lcrr;

    .line 2047
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    .line 2048
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "setViewConfig params invalid"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2050
    :cond_1
    iput v3, v6, Lcrr;->c:I

    .line 2051
    iput v4, v6, Lcrr;->d:I

    .line 2052
    iput v5, v6, Lcrr;->e:I

    .line 2053
    iget-object v3, v6, Lcrr;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, v6, Lcrr;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 2054
    :cond_2
    iget-object v3, v6, Lcrr;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget v3, v6, Lcrr;->c:I

    int-to-double v8, v3

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v6, Lcrr;->f:I

    .line 2055
    iget-object v3, v6, Lcrr;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget v3, v6, Lcrr;->c:I

    int-to-double v8, v3

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v6, Lcrr;->g:I

    .line 2056
    invoke-virtual {v6}, Lcrr;->notifyDataSetChanged()V

    .line 313
    :cond_3
    iget-object v3, v2, Lckk;->i:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;->setData(Ljava/util/List;)V

    .line 328
    .end local v0    # "emotionListView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListView;
    :goto_0
    return-object v0

    .line 316
    :cond_4
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "emotionVerticalGridView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 319
    iget-object v3, v2, Lckk;->i:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->setData(Ljava/util/List;)V

    .line 320
    if-nez p2, :cond_5

    .line 321
    iget v3, v2, Lckk;->e:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->b:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->b:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(III)V

    :goto_1
    move-object v0, v1

    .line 325
    goto :goto_0

    .line 323
    :cond_5
    iget v3, v2, Lckk;->e:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->c:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->c:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;->a(III)V

    goto :goto_1

    .line 328
    .end local v1    # "emotionVerticalGridView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionVerticalGridView;
    :cond_6
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 301
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
