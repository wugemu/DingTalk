.class final Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;
.super Ljava/lang/Object;
.source "GroupRobotListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    check-cast p1, Ljava/util/List;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Ljava/util/List;Z)V

    .line 234
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Ljava/util/List;Z)V

    .line 250
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 243
    return-void
.end method
