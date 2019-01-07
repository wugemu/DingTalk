.class Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v3, "intent_key_error_code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v3, "intent_key_error_msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "errMsg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "action_is_deployment_recording_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string/jumbo v3, "action_start_deployment_record_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string/jumbo v3, "action_stop_deployment_record_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    const-string/jumbo v3, "action_try_upload_deployment_records_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CustomerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
