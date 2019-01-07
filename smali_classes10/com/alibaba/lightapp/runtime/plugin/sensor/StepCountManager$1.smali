.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->startStepCount()Z
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
    .line 237
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$000(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$200(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_key_step_last_cold_upload_time"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 244
    const-string/jumbo v0, "step"

    const-string/jumbo v1, "stepcount"

    const-string/jumbo v2, "initial delay upload"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "H5"

    const-string/jumbo v2, "stepcount"

    const-string/jumbo v3, "initial-delay-upload"

    const-string/jumbo v4, "initial-delay-upload"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method
