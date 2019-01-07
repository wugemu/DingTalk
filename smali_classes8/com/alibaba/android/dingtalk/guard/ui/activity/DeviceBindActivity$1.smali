.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;
.super Ljava/lang/Object;
.source "DeviceBindActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    check-cast p1, Lbse;

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    if-eqz p1, :cond_2

    iget-object v0, p1, Lbse;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1262
    iget-object v0, p1, Lbse;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1264
    const-string/jumbo v1, "url"

    iget-object v2, p1, Lbse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->finish()V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    const/4 v1, 0x0

    const-string/jumbo v2, "services error"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string/jumbo v0, "DoorGuardBind"

    const-string/jumbo v1, "getDeviceLiteAppUrl success, but url empty"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    :cond_2
    new-instance v0, Lbsv;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)Lbsw$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbsv;-><init>(Lbsw$e;Lbsw$b;Ljava/lang/String;)V

    .line 1274
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .line 1936
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b:Lbsw$c;

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;Landroid/content/Intent;)V

    .line 1278
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)Lbsw$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)Lbsw$c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lbsw$c;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 289
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string/jumbo v1, "DoorGuardBind"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "getDeviceLiteAppUrl fail, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "; msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v2, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v2, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    sget v3, Lbrx$g;->and_conf_txt_no_network:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lbta;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "tips":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    move-object v0, p2

    .line 302
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    const-string/jumbo v0, "unknow error"

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$1;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v1, v6, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 285
    return-void
.end method
