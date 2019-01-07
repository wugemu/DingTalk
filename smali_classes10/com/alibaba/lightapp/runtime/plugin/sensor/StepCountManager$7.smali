.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextRemoteUpload(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 894
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$7;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 895
    return-void
.end method
