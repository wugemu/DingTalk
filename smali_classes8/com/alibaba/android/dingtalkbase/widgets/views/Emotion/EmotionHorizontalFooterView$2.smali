.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;
.super Ljava/lang/Object;
.source "EmotionHorizontalFooterView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 348
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 320
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 9
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 324
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;I)Lckk;

    move-result-object v3

    .line 325
    .local v3, "m":Lckk;
    if-eqz v3, :cond_2

    .line 326
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 327
    .local v5, "tab":I
    if-ltz v5, :cond_1

    .line 328
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 329
    .local v0, "first":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getLastVisiblePosition()I

    move-result v2

    .line 330
    .local v2, "last":I
    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    .line 331
    if-gt v5, v0, :cond_3

    .line 332
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)I

    move-result v7

    mul-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(I)V

    .line 339
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Landroid/widget/BaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 341
    .end local v0    # "first":I
    .end local v2    # "last":I
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    iget v7, v3, Lckk;->c:I

    add-int/lit8 v8, p1, 0x0

    invoke-static {v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;II)V

    .line 343
    .end local v5    # "tab":I
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)V

    .line 344
    return-void

    .line 333
    .restart local v0    # "first":I
    .restart local v2    # "last":I
    .restart local v5    # "tab":I
    :cond_3
    if-lt v5, v2, :cond_0

    .line 334
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 335
    .local v4, "s":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)I

    move-result v1

    .line 336
    .local v1, "itemWidth":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    move-result-object v6

    mul-int v7, v1, v4

    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v8, v5

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(I)V

    goto :goto_0
.end method
