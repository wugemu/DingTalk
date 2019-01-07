.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;
.super Lcmi;
.source "StepCountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->remoteUploadHistorySteps(Ljava/util/Calendar;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$localStep:Ljava/lang/Integer;

.field final synthetic val$localTimestamp:J

.field final synthetic val$localUid:J

.field final synthetic val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

.field final synthetic val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/database/StepCountObject;Ljava/lang/Integer;JJLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localStep:Ljava/lang/Integer;

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localTimestamp:J

    iput-wide p6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localUid:J

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1008
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-interface {v0, v6}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;->onStepsUploaded(Z)V

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "performRemoteUpload onException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$calendar:Ljava/util/Calendar;

    .line 1013
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, ": failed to upload history steps: "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1012
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 968
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->onLoadSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 972
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1302(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)Z

    .line 973
    const-string/jumbo v0, "StepCountManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method
