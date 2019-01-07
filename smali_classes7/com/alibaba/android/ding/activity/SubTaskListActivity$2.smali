.class final Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;
.super Ljava/lang/Object;
.source "SubTaskListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->d(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 50
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/SubTaskListActivity;->b(Lcom/alibaba/android/ding/activity/SubTaskListActivity;)Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 54
    .local v1, "item":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/SubTaskListActivity$2;->a:Lcom/alibaba/android/ding/activity/SubTaskListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 1681
    iget v4, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 55
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method
