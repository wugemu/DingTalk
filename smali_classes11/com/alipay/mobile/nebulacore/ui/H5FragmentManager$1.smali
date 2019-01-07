.class Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->postPreRenderRunnable(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field final synthetic val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 329
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 330
    :cond_0
    const-string/jumbo v10, "H5FragmentManager"

    const-string/jumbo v11, "isFinishing"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause()Z

    move-result v10

    if-nez v10, :cond_3

    .line 334
    const-string/jumbo v10, "H5FragmentManager"

    const-string/jumbo v11, "##h5prerender## cannot use prerender"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    const-string/jumbo v10, "h5_preRenderConfig"

    .line 338
    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 339
    .local v5, "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "appBlackList4Android"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 340
    .local v0, "appBlackList4Android":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v10, "appForceWhiteList4Android"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 341
    .local v1, "appForceWhiteList4Android":Lcom/alibaba/fastjson/JSONArray;
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "appId"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "appId":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 344
    const-string/jumbo v10, "H5FragmentManager"

    const-string/jumbo v11, "##h5prerender## disable by appBlackList4Android"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "url"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "currentUrl":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 350
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_6

    .line 351
    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "fragmentPart":Ljava/lang/String;
    const-string/jumbo v10, "H5FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "##h5prerender## fragmentPart "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 355
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 356
    const-string/jumbo v10, "H5FragmentManager"

    const-string/jumbo v11, "##h5prerender## disable nodsl"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    .end local v6    # "fragmentPart":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "YES"

    const-string/jumbo v11, "shouldUsePreRender"

    .line 363
    invoke-static {v5, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 362
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 364
    .local v4, "enablePrerender":Z
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 365
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5PreRenderPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, "urlSuffix":Ljava/lang/String;
    const-string/jumbo v10, "H5FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "##h5prerender## get urlSuffix from appConfig.json "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 368
    const-string/jumbo v10, "prerenderPage"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    const-string/jumbo v10, "H5FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "##h5prerender## get urlSuffix from online config "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 373
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 374
    .local v7, "preStartParam":Landroid/os/Bundle;
    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 375
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 377
    :cond_8
    const-string/jumbo v10, "url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->val$fragment:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 378
    invoke-virtual {v12}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "onlineHost"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 377
    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v10, "isPrerender"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string/jumbo v10, "fragmentType"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v7, v11}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 384
    const-string/jumbo v10, "H5FragmentManager"

    const-string/jumbo v11, "##h5prerender## add prerender in tiny no first time"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v7, v11}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method
