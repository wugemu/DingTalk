.class Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;
.super Ljava/lang/Object;
.source "H5UrlInterceptPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->shouldInterceptUrl(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

.field final synthetic val$isGooglePlayChannel:Z

.field final synthetic val$nextUrl:Ljava/lang/String;

.field final synthetic val$scheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$isGooglePlayChannel:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$scheme:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$nextUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "detailUrl"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$isGooglePlayChannel:Z

    if-eqz v1, :cond_1

    .line 424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 426
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->startExtActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    const-string/jumbo v1, "H5UrlInterceptPlugin"

    const-string/jumbo v2, "download whitelistapk but googleplay channel return"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_1
    return-void

    .line 431
    :catch_0
    move-exception v1

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 444
    :cond_0
    const-string/jumbo v1, "H5UrlInterceptPlugin"

    const-string/jumbo v2, "googleplaychannel query packagename empty"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;)Liop;

    move-result-object v1

    invoke-interface {v1, p1}, Liop;->loadUrl(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 455
    .local v0, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "scheme"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "origin"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v1, "detailUrl"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;)Liop;

    move-result-object v1

    const-string/jumbo v2, "h5PageJumpPP"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 460
    .end local v0    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;)Liop;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin$2;->val$nextUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Liop;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
