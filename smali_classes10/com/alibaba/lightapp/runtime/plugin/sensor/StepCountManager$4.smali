.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->scheduleNextLocalSave(ZZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
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
    .line 527
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->val$force:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

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
    .line 530
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->val$force:Z

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$4;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$700(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;ZLcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 531
    return-void
.end method
