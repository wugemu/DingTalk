.class Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;
.super Landroid/content/BroadcastReceiver;
.source "VPN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->registerVPNReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v3, "vpn_result_error_code"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->access$000(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->access$100(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 139
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "errorCode="

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "errMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/net/VPN;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->access$000(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN;->access$200(Lcom/alibaba/lightapp/runtime/plugin/net/VPN;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
