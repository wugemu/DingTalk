.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->postPreRenderRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 206
    :cond_0
    const-string/jumbo v11, "H5Fragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "isFinishing"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isBetweenResumePause()Z

    move-result v11

    if-nez v11, :cond_3

    .line 210
    const-string/jumbo v11, "H5Fragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "##h5prerender## cannot use prerender "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 216
    const-string/jumbo v11, "h5_preRenderConfig"

    .line 217
    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 218
    .local v5, "enablePrerenderConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "appBlackList4Android"

    const/4 v12, 0x0

    invoke-static {v5, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 219
    .local v0, "appBlackList4Android":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v11, "appForceWhiteList4Android"

    const/4 v12, 0x0

    invoke-static {v5, v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 220
    .local v1, "appForceWhiteList4Android":Lcom/alibaba/fastjson/JSONArray;
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "appId"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "appId":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 223
    const-string/jumbo v11, "H5Fragment"

    const-string/jumbo v12, "##h5prerender## disable by appBlackList4Android"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "url"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "currentUrl":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 230
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_6

    .line 231
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "fragmentPart":Ljava/lang/String;
    const-string/jumbo v11, "H5Fragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ##h5prerender## fragmentPart "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz v1, :cond_5

    if-eqz v1, :cond_6

    .line 234
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 235
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 236
    const-string/jumbo v11, "H5Fragment"

    const-string/jumbo v12, "##h5prerender## disable nodsl"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v6    # "fragmentPart":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "YES"

    const-string/jumbo v12, "shouldUsePreRender"

    .line 243
    invoke-static {v5, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 244
    .local v4, "enablePrerender":Z
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5PreRenderPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    .local v10, "urlSuffix":Ljava/lang/String;
    const-string/jumbo v11, "H5Fragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "##h5prerender## get urlSuffix from appConfig.json "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 248
    const-string/jumbo v11, "prerenderPage"

    invoke-static {v5, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 249
    const-string/jumbo v11, "H5Fragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "##h5prerender## get urlSuffix from online config "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 253
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 254
    .local v8, "preStartParam":Landroid/os/Bundle;
    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 255
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 257
    :cond_8
    const-string/jumbo v11, "url"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 258
    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "onlineHost"

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v11, "isPrerender"

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string/jumbo v11, "fragmentType"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v8, v12}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 263
    const-string/jumbo v11, "H5Fragment"

    const-string/jumbo v12, "##h5prerender## add prerender in tiny first time"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 265
    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v7

    .line 266
    .local v7, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    const/4 v11, 0x2

    invoke-virtual {v7, v8, v11}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    goto/16 :goto_0
.end method
