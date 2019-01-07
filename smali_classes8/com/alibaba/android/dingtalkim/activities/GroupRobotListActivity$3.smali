.class final Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;
.super Ljava/lang/Object;
.source "GroupRobotListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 304
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 305
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a(I)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0
.end method
