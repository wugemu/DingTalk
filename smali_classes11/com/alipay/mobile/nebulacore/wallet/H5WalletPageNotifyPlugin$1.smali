.class Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "H5WalletPageNotifyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

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
    const/4 v4, 0x0

    .line 101
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    const-string/jumbo v1, "received handleResumeListen"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .line 104
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Liop;

    move-result-object v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "app_id"

    .line 108
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Linp;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$102(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$200(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    const-string/jumbo v1, "createPage resume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Liop;

    move-result-object v0

    const-string/jumbo v1, "h5PageResume"

    invoke-interface {v0, v1, v4}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    sget-object v0, Linp;->b:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$200(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    const-string/jumbo v1, "createPage pause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Liop;

    move-result-object v0

    const-string/jumbo v1, "h5PagePause"

    invoke-interface {v0, v1, v4}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0
.end method
