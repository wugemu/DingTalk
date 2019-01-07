.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 6123
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

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
    .line 6139
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 6140
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 6141
    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 6143
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6144
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 6145
    .local v1, "lastPos":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v3}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    add-int v2, v3, v4

    .line 6147
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 6321
    iget-boolean v3, v3, Ldqq;->f:Z

    .line 6148
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 6149
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "lastItem":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 6150
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 6151
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setBottomMode(Z)V

    .line 6156
    .end local v0    # "lastItem":Landroid/view/View;
    .end local v1    # "lastPos":I
    .end local v2    # "limit":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;

    move-result-object v3

    invoke-virtual {v3}, Ldey;->a()V

    .line 6160
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6161
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;

    move-result-object v3

    invoke-virtual {v3}, Ldev;->a()V

    .line 6163
    :cond_2
    return-void

    .line 6153
    .restart local v1    # "lastPos":I
    .restart local v2    # "limit":I
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setBottomMode(Z)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 6127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v0, :cond_0

    .line 6130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 6133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 6135
    :cond_1
    return-void
.end method
