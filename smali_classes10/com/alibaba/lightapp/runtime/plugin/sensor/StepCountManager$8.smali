.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->performRemoteUpload(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V
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
    .line 900
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 904
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 905
    const-string/jumbo v3, "step"

    const-string/jumbo v4, "stepcount"

    const-string/jumbo v5, "not uploaded"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 927
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v0

    .line 920
    .local v0, "now":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v2

    .line 921
    .local v2, "today":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 924
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Ljava/util/Calendar;Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;)V

    .line 926
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$100(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Z)V

    goto :goto_0
.end method
