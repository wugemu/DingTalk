.class Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;
.super Ljava/lang/Object;
.source "Alpha.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->connectSecurityWiFi(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;)V

    .line 176
    .local v0, "callback":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    new-instance v2, Lbni$a;

    invoke-direct {v2}, Lbni$a;-><init>()V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$ssid:Ljava/lang/String;

    .line 177
    invoke-virtual {v2, v3}, Lbni$a;->b(Ljava/lang/String;)Lbni$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$4;->val$password:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v3}, Lbni$a;->c(Ljava/lang/String;)Lbni$a;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v0}, Lbni$a;->a(Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;)Lbni$a;

    move-result-object v2

    .line 1070
    iget-object v1, v2, Lbni$a;->a:Lbni;

    .line 181
    .local v1, "connectWifiRequest":Lbni;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;->quickConnectWifi(Lbni;)V

    .line 182
    return-void
.end method
