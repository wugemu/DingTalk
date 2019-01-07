.class final Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a$1;
.super Ljava/lang/Object;
.source "GroupRobotListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a$1;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 452
    return-void
.end method
