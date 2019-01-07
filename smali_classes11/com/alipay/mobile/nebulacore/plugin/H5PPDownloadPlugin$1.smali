.class Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;
.super Ljava/lang/Object;
.source "H5PPDownloadPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->handlePPDownload(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

.field final synthetic val$contentDisposition:Ljava/lang/String;

.field final synthetic val$contentLength:J

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$isGooglePlayChannel:Z

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$isGooglePlayChannel:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$userAgent:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$contentDisposition:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$mimeType:Ljava/lang/String;

    iput-wide p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "detailUrl"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$isGooglePlayChannel:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->startExtActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    const-string/jumbo v0, "H5PPDownloadPlugin"

    const-string/jumbo v1, "download whitelistapk but googleplay channel return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo v0, "H5PPDownloadPlugin"

    const-string/jumbo v1, "googleplaychannel query packagename empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Liop;

    move-result-object v0

    invoke-interface {v0, p1}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 105
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v8, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "apk"

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v0, "origin"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v0, "detailUrl"

    invoke-virtual {v8, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Liop;

    move-result-object v0

    const-string/jumbo v1, "h5PageJumpPP"

    invoke-interface {v0, v1, v8}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 111
    .end local v8    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$contentDisposition:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$mimeType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;->val$contentLength:J

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method
