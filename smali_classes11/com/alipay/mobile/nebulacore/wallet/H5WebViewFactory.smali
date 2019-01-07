.class public Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;
.super Ljava/lang/Object;
.source "H5WebViewFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5WebViewFactory"

.field private static sInstance:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->sInstance:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private canUseAndroidWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    sget-boolean v5, Liog;->b:Z

    if-nez v5, :cond_1

    .line 56
    const-string/jumbo v4, "H5WebViewFactory"

    const-string/jumbo v5, "uc init throw exception, so not need init "

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 62
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 63
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_2

    .line 64
    const-string/jumbo v5, "h5_first_init_use_android_webView_biz"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 66
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 68
    goto :goto_0

    .line 73
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 74
    goto :goto_0

    .line 78
    :cond_3
    instance-of v5, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v5, :cond_0

    .line 82
    const-string/jumbo v5, "firstInitAndroidWebview"

    invoke-static {p3, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v5, "no"

    const-string/jumbo v6, "h5_first_init_use_android_webView_startPage"

    invoke-interface {v0, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 93
    goto :goto_0
.end method

.method public static instance()Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->sInstance:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->sInstance:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->sInstance:Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    return-object v0
.end method


# virtual methods
.method public createWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 103
    .local v14, "time":J
    invoke-static/range {p2 .. p4}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->getWebViewType(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v19

    .line 105
    .local v19, "webViewType":Lcom/alipay/mobile/nebula/webview/WebViewType;
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v10, "param":Lcom/alibaba/fastjson/JSONObject;
    const/16 v17, 0x0

    .line 108
    .local v17, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    sget-object v20, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v11

    .line 110
    .local v11, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    if-eqz v11, :cond_6

    .line 112
    :try_start_0
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create rn view"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/alipay/mobile/h5container/service/RnService;->createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 124
    .end local v11    # "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    :cond_0
    :goto_0
    sget-object v20, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 126
    sget-boolean v20, Liog;->a:Z

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->canUseAndroidWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 128
    :try_start_1
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "uc is not Ready canUseAndroidWebView create android web view "

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v17, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object/from16 v18, v17

    .line 157
    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .local v18, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :goto_1
    if-nez v18, :cond_1

    sget-boolean v20, Liog;->a:Z

    if-nez v20, :cond_1

    sget-object v20, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 159
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->sendUcReceiver(Z)V

    .line 162
    :cond_1
    if-nez v18, :cond_c

    .line 164
    :try_start_2
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create android web view"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v17, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 179
    .end local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :goto_2
    if-eqz v17, :cond_2

    .line 180
    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v16

    .line 181
    .local v16, "version":Ljava/lang/String;
    const-string/jumbo v20, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v20, "H5WebViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "webview version: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v16    # "version":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 186
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lipc;->getTopPage()Liop;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 187
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lipc;->getTopPage()Liop;

    move-result-object v9

    .line 188
    .local v9, "page":Liop;
    if-eqz v9, :cond_3

    .line 189
    const-string/jumbo v20, "h5PageCreateWebView"

    move-object/from16 v0, v20

    invoke-interface {v9, v0, v10}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 193
    .end local v9    # "page":Liop;
    :cond_3
    if-eqz v17, :cond_4

    .line 194
    sget-object v20, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    invoke-interface/range {v17 .. v17}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 195
    const-string/jumbo v20, "appId"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "appId":Ljava/lang/String;
    const-string/jumbo v20, "isTinyApp"

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 197
    .local v8, "isTinyApp":Z
    const-string/jumbo v20, "H5_WebView_Type"

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 198
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "AndroidWebView"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 199
    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "\u4f7f\u7528Android\u7cfb\u7edfWebView"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    .line 197
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 200
    if-eqz v8, :cond_4

    .line 201
    const-string/jumbo v20, "MTBIZ_H5"

    const-string/jumbo v21, "H5_TinyApp_Use_AndroidWebView"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    .end local v4    # "appId":Ljava/lang/String;
    .end local v8    # "isTinyApp":Z
    :cond_4
    sget-boolean v20, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v20, :cond_5

    .line 208
    const-string/jumbo v20, "pageLoad|createWebViewFinishPoint"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v6, v20, v14

    .line 212
    .local v6, "elapse":J
    const-string/jumbo v20, "H5WebViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "createWebView elapse "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v20, "create_webView"

    const-string/jumbo v21, "create_webView"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14, v15}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    return-object v17

    .line 114
    .end local v6    # "elapse":J
    .restart local v11    # "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v20, "degradeWebView"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v20, "H5WebViewFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "create ReactNebulaView fail:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "failed to get rn service"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v11    # "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catch_1
    move-exception v12

    .line 131
    .local v12, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create android webview failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const-string/jumbo v20, "H5WebViewFactory"

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "createAndroidWebViewException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 133
    throw v12

    .line 136
    .end local v12    # "throwable":Ljava/lang/Throwable;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v13

    .line 137
    .local v13, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    if-nez v13, :cond_8

    .line 138
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "failed to get uc service"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v17

    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto/16 :goto_1

    .line 141
    .end local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_8
    :try_start_3
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create uc web view"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 144
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x1

    .line 143
    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alipay/mobile/h5container/service/UcService;->createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v17

    move-object/from16 v18, v17

    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto/16 :goto_1

    .line 144
    .end local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_9
    const/16 v20, 0x0

    goto :goto_3

    .line 146
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->isAbove14Level()Z

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alipay/mobile/h5container/service/UcService;->createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v17

    move-object/from16 v18, v17

    .line 152
    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto/16 :goto_1

    .line 148
    .end local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catch_2
    move-exception v5

    .line 149
    .restart local v5    # "e":Ljava/lang/Throwable;
    const-string/jumbo v20, "degradeWebView"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create uc web view failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const-string/jumbo v20, "H5WebViewFactory"

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "createUCWebViewException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v13    # "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    :cond_b
    move-object/from16 v18, v17

    .end local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto/16 :goto_1

    .line 166
    :catch_3
    move-exception v12

    .line 167
    .restart local v12    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v20, "H5WebViewFactory"

    const-string/jumbo v21, "create android webview failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    const-string/jumbo v20, "H5WebViewFactory"

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    const-string/jumbo v21, "createAndroidWebViewException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 172
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 174
    throw v12

    .end local v12    # "throwable":Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v17, v18

    .end local v18    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .restart local v17    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    goto/16 :goto_2
.end method
