.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;
.super Ljava/lang/Object;
.source "MiniDownloadPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->b:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1121
    iget-object v1, v3, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 75
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "url"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "header"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "headers":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->b:Liny;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v3, v4, v5}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->b:Liny;

    invoke-static {v3, v2, v0, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;->b:Liny;

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;Liny;)V

    goto :goto_0
.end method
