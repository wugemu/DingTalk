.class final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 573
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    .line 573
    invoke-interface {v0}, Ldih$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    .line 573
    invoke-interface {v0}, Ldih$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$9;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 3053
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    .line 574
    invoke-interface {v0}, Ldih$a;->b()V

    .line 576
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 569
    return-void
.end method
