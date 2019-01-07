.class Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;
.super Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
.source "Alpha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .param p3, "errorMessage"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    const-string/jumbo v2, "connectType"

    const-string/jumbo v3, "normal"

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 169
    return-void
.end method
