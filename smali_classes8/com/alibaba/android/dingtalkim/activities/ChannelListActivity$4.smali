.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I

    .line 218
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 203
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;I)I

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;Z)V

    .line 211
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
