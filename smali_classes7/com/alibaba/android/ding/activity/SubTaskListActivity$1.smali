.class final Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;
.super Ljava/lang/Object;
.source "SubTaskListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/SubTaskListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    add-int v0, p2, p3

    .line 40
    .local v0, "lastVisibleItemPosition":I
    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->a(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lbbg$a;

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$1;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->c(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lbbg$a;

    move-result-object v1

    invoke-interface {v1}, Lbbg$a;->a()V

    .line 43
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 35
    return-void
.end method
