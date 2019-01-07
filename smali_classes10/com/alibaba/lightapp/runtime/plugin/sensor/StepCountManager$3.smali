.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;
.super Landroid/content/BroadcastReceiver;
.source "StepCountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->initReceiver()V
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
    .line 284
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 287
    const-string/jumbo v2, "com.workapp.user.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$400(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)V

    .line 291
    const-string/jumbo v2, "pref_key_step_counter_upload"

    invoke-static {v2}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v1

    .line 292
    .local v1, "upload":Z
    if-eqz v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v2, v8}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)V

    .line 296
    :cond_0
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "login,"

    aput-object v5, v4, v6

    .line 297
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v1    # "upload":Z
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    const-string/jumbo v2, "com.workapp.user.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    const-string/jumbo v3, "token_remote_upload_runnable"

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    const-string/jumbo v4, "logout"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string/jumbo v2, "com.workapp.step.upload.interval.UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const-string/jumbo v2, "intent_key_step_upload_interval"

    const/16 v3, 0x384

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, "interval":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$502(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J

    .line 306
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$500(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$602(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;J)J

    .line 307
    const-string/jumbo v2, "step"

    const-string/jumbo v3, "stepcount"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "upload interval updated"

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    .line 308
    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$500(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
