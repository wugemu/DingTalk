.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->onLoadSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 978
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1402(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J

    .line 979
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$200(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_key_step_last_upload_history_time"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 981
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    if-eqz v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localStep:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 983
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localTimestamp:J

    iput-wide v2, v1, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 984
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$todayUploadedSteps:Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-virtual {v1, v2}, Lhfz;->b(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    .line 993
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$uploadCallback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-interface {v1, v6}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;->onStepsUploaded(Z)V

    .line 997
    :cond_0
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v1

    invoke-virtual {v1}, Lhfz;->d()V

    .line 998
    const-string/jumbo v1, "performRemoteUpload finished"

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 999
    const-string/jumbo v1, "step"

    const-string/jumbo v2, "stepcount"

    const-string/jumbo v3, "history steps uploaded successfully"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void

    .line 986
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    .line 987
    .local v0, "uploadedSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localStep:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 988
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-wide v2, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localTimestamp:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 989
    iput v6, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 990
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;

    iget-wide v2, v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$9;->val$localUid:J

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 991
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhfz;->a(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    goto :goto_0
.end method
