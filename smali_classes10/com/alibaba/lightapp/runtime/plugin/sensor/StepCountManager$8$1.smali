.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;

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
    .line 910
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;->onStepsUploaded(Z)V

    .line 913
    :cond_0
    return-void
.end method
