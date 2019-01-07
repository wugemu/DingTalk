.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->performLocalSave(ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->val$force:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$800(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    .line 573
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->val$force:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$5;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$900(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 576
    :cond_0
    return-void
.end method
