.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->syncUserStepsFromRemote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

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
    .line 590
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/HealthIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/HealthIService;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/idl/HealthIService;->getStepInfo(Lcmi;)V

    .line 641
    return-void
.end method
