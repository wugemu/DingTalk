.class final Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ShieldListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 83
    if-nez p2, :cond_0

    .line 84
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    int-to-long v2, v4

    .line 85
    .local v2, "lastVisibleIndex":J
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->b(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Lbnq;

    move-result-object v4

    invoke-virtual {v4}, Lbnq;->b()J

    move-result-wide v0

    .line 87
    .local v0, "createAt":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Lbqd;

    move-result-object v4

    invoke-interface {v4}, Lbqd;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/ShieldListActivity;)Lbqd;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lbqd;->a(J)V

    .line 94
    .end local v0    # "createAt":J
    .end local v2    # "lastVisibleIndex":J
    :cond_0
    return-void
.end method
