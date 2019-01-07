.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2298
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 2299
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 2300
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 2302
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2303
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 2304
    .local v1, "lastPos":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    add-int v2, v3, v4

    .line 2306
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 3321
    iget-boolean v3, v3, Ldqq;->f:Z

    .line 2307
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 2308
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "lastItem":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 2309
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 2310
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setBottomMode(Z)V

    .line 2315
    .end local v0    # "lastItem":Landroid/view/View;
    .end local v1    # "lastPos":I
    .end local v2    # "limit":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2316
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;

    move-result-object v3

    invoke-virtual {v3}, Ldey;->a()V

    .line 2319
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldev;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2320
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldev;

    move-result-object v3

    invoke-virtual {v3}, Ldev;->a()V

    .line 2322
    :cond_2
    return-void

    .line 2312
    .restart local v1    # "lastPos":I
    .restart local v2    # "limit":I
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setBottomMode(Z)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 2294
    return-void
.end method
