.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Schema;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Schema.java"


# static fields
.field private static final URL_FEEDBACK:Ljava/lang/String; = "https://h5.dingtalk.com/feedback/index.html?spm=0.0.0.0.VLY2Ej&lwfrom=20160318135421668&id=707%22"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "schema"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "schema":Ljava/lang/String;
    const-string/jumbo v1, "rating"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Schema;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "https://h5.dingtalk.com/feedback/index.html?spm=0.0.0.0.VLY2Ej&lwfrom=20160318135421668&id=707%22"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public openWifiSetting(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Schema;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 40
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method
