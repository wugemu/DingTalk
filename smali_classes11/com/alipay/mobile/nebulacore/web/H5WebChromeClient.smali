.class public Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# static fields
.field private static final BRIDGE_MSG_HEADER:Ljava/lang/String; = "h5container.message: "

.field public static final FILE_CHOOSER_RESULT:Ljava/lang/String; = "FILE_CHOOSER_RESULT"

.field private static sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field public TAG:Ljava/lang/String;

.field private h5Page:Liop;

.field private mConsoleMessageHandler:Landroid/os/Handler;

.field public mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

.field private mEnableAsyncConsoleMessage:Z

.field private mEnableHandleUncaughtJsError:Z

.field private pageData:Lior;

.field private previousReceiver:Landroid/content/BroadcastReceiver;

.field private webDriverHelper:Liph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 5
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v2, "H5WebChromeClient"

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableAsyncConsoleMessage:Z

    .line 75
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableHandleUncaughtJsError:Z

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "isPrerender"

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preRender"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    .line 85
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lior;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    .line 86
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Liph;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->webDriverHelper:Liph;

    .line 88
    const-string/jumbo v2, "h5_asyncConsoleMessage"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "configAsyncConsoleMessage":Ljava/lang/String;
    const-string/jumbo v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableAsyncConsoleMessage:Z

    .line 93
    :cond_1
    const-string/jumbo v2, "h5_handleUncaughtJsError"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "handleUncaughtJsErrorValue":Ljava/lang/String;
    const-string/jumbo v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableHandleUncaughtJsError:Z

    .line 97
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 525
    const/4 v1, 0x5

    .line 526
    .local v1, "times":I
    const/4 v0, 0x0

    .local v0, "activity":Landroid/app/Activity;
    move v2, v1

    .line 528
    .end local v1    # "times":I
    .local v2, "times":I
    :goto_0
    if-eqz p0, :cond_3

    .line 532
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 533
    check-cast v0, Landroid/app/Activity;

    move v1, v2

    .line 541
    .end local v2    # "times":I
    .restart local v1    # "times":I
    :cond_0
    :goto_1
    return-object v0

    .line 537
    .end local v1    # "times":I
    .restart local v2    # "times":I
    :cond_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 538
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "ctx":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 540
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "times":I
    .restart local v1    # "times":I
    if-lez v2, :cond_0

    move v2, v1

    .end local v1    # "times":I
    .restart local v2    # "times":I
    goto :goto_0

    :cond_3
    move v1, v2

    .end local v2    # "times":I
    .restart local v1    # "times":I
    goto :goto_1
.end method

.method private handleMsgFromJs(Ljava/lang/String;)Z
    .locals 24
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 188
    const/16 v20, 0x0

    .line 287
    :goto_0
    return v20

    .line 192
    :cond_0
    const/4 v13, 0x0

    .line 193
    .local v13, "msgText":Ljava/lang/String;
    const-string/jumbo v20, "h5container.message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 194
    const-string/jumbo v20, "h5container.message: "

    const-string/jumbo v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 198
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 200
    const-string/jumbo v20, "invokeJS msgType"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string/jumbo v20, "load AlipayJSBridge"

    .line 201
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 202
    const-string/jumbo v20, "NBH5AppContentLog"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "AppId/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    move-object/from16 v22, v0

    .line 203
    invoke-interface/range {v22 .. v22}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "appId"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 202
    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sendBugMeConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 211
    :cond_3
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 212
    .local v11, "joMessage":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 213
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 216
    :cond_5
    const-string/jumbo v20, "clientId"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "clientId":Ljava/lang/String;
    const-string/jumbo v20, "func"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v20, "msgType"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, "msgType":Ljava/lang/String;
    const-string/jumbo v20, "keepCallback"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    .line 220
    .local v12, "keep":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sendBugMeConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 223
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 226
    :cond_6
    const-string/jumbo v20, "param"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 230
    .local v16, "params":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string/jumbo v20, "monitorH5Performance"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 231
    const-string/jumbo v20, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 232
    .local v8, "datas":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    .line 233
    .local v17, "size":I
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 234
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 235
    .local v6, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "dataName":Ljava/lang/String;
    const-string/jumbo v20, "headScreen"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 237
    const-string/jumbo v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 238
    .local v19, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onGetHeadScreen(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v6    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "dataName":Ljava/lang/String;
    .end local v8    # "datas":Lcom/alibaba/fastjson/JSONArray;
    .end local v17    # "size":I
    .end local v19    # "value":Ljava/lang/Object;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 247
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v18

    .line 243
    .local v18, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Report perf to last pagedata error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Liop;->getBridge()Linx;

    move-result-object v3

    .line 251
    .local v3, "bridge":Linx;
    if-nez v3, :cond_9

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "bridge == null"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 255
    :cond_9
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v4}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 1202
    .local v4, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    iput-object v15, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 1217
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    move-object/from16 v20, v0

    .line 2207
    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 2222
    iput-object v14, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 3212
    iput-object v5, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 3237
    iput-boolean v12, v4, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 259
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v9

    .line 261
    .local v9, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableAsyncConsoleMessage:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 262
    sget-object v20, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;

    if-nez v20, :cond_a

    .line 264
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v20

    const-class v21, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 265
    .local v10, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v10, :cond_a

    .line 266
    const-string/jumbo v20, "h5_syncJsApi"

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v20

    sput-object v20, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;

    .line 270
    .end local v10    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v19    # "value":Ljava/lang/String;
    :cond_a
    sget-object v20, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v20, :cond_b

    sget-object v20, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sSyncJsApiList:Lcom/alibaba/fastjson/JSONArray;

    .line 4065
    iget-object v0, v9, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 270
    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 274
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    .line 276
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v9}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Linx;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 284
    :cond_d
    invoke-interface {v3, v9}, Linx;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_2
.end method

.method private handleUncaughtJsError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    :try_start_0
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    .local v4, "jsErrorContent":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "name"

    const-string/jumbo v6, "jsErrors"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v5, "lineno"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 147
    .local v0, "dataContent":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 149
    .local v1, "dataMsg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 151
    .local v3, "fakePerformanceMsg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "func"

    const-string/jumbo v6, "monitorH5Performance"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v5, "param"

    invoke-virtual {v3, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v5, "msgType"

    const-string/jumbo v6, "call"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v5, "clientId"

    const-string/jumbo v6, "default_clientId"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "h5container.message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 158
    .end local v0    # "dataContent":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "dataMsg":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "fakePerformanceMsg":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsErrorContent":Lcom/alibaba/fastjson/JSONObject;
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 156
    .restart local p1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleUncaughtJsError error : "

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onGetHeadScreen(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    .line 292
    .local v1, "service":Lcom/alipay/mobile/nebulacore/api/NebulaService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    if-eqz v2, :cond_0

    .line 293
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 294
    .local v0, "jobj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "headScreen"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    .line 4474
    iget-object v3, v3, Lior;->w:Ljava/lang/String;

    .line 295
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    .line 4870
    iget-object v3, v3, Lior;->ak:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v2, "isTinyApp"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    .line 4960
    iget-object v3, v3, Lior;->at:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v2, "h5getHeadScreen"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 301
    .end local v0    # "jobj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceScheduler;->appendHeadScreen(Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method private sendBugMeConsole(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 164
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 166
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    if-eqz p2, :cond_0

    .line 168
    const-string/jumbo v1, "func"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mConsoleMessageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method

.method private showLocationDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "finalDomain"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    .line 419
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;

    .line 420
    .local v1, "dialogProvider":Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;
    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/provider/H5LocationDialogProvider;->createLocationDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 428
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {p3, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getVideoLoadingProgressView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 572
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->webDriverHelper:Liph;

    invoke-interface {v4}, Liph;->h()V

    .line 102
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v3

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    .line 107
    .local v0, "lineNumber":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onConsoleMessage "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lineNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object v2, v1

    .line 113
    .local v2, "tmpMessage":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mEnableHandleUncaughtJsError:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    sget-object v5, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v4, v5, :cond_2

    .line 115
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->handleUncaughtJsError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 119
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->handleMsgFromJs(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "b"    # Z
    .param p3, "b2"    # Z
    .param p4, "message"    # Landroid/os/Message;

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 11
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 366
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onGeolocationPermissionsShowPrompt "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-nez v7, :cond_0

    .line 368
    invoke-interface {p2, p1, v10, v10}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 414
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v7}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 372
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "finalDomain":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 374
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 375
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v2

    .line 376
    .local v2, "data":Lioc;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v7}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "isH5app"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 377
    .local v4, "isH5app":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_1

    const-string/jumbo v7, "Y"

    invoke-interface {v2, v3}, Lioc;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    .line 379
    invoke-interface {v7}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 380
    :cond_2
    invoke-interface {p2, p1, v10, v10}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 384
    :cond_3
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;

    invoke-direct {v5, p0, p2, p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v5, "listener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v7}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-nez v7, :cond_4

    .line 402
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "not H5Activity"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {p2, p1, v10, v10}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 406
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v7}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 407
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 408
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isFinishing"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-interface {p2, p1, v10, v10}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 412
    :cond_5
    invoke-direct {p0, v0, v3, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->showLocationDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onHideCustomView()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onShowCustomView [SDK Version] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 557
    return-void
.end method

.method public onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 10
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 577
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onJsAlert "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-nez v4, :cond_0

    .line 580
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "h5Page == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    move v2, v9

    .line 646
    :goto_0
    return v2

    .line 585
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 586
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " isFinishing"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    move v2, v3

    .line 589
    goto :goto_0

    .line 592
    :cond_2
    instance-of v4, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v4, :cond_3

    .line 593
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "not H5Activity"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 594
    goto :goto_0

    .line 599
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 600
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 601
    .local v0, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-nez v0, :cond_4

    .line 602
    new-instance v8, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 603
    .local v8, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    invoke-virtual {v8, p3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$5;

    invoke-direct {v4, p0, p4, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 605
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .end local v8    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    :goto_1
    move v2, v9

    .line 646
    goto :goto_0

    .line 618
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, p3

    move-object v5, v2

    move-object v6, v2

    .line 617
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v7

    .line 621
    .local v7, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;

    invoke-direct {v2, p0, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 622
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 633
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$7;

    invoke-direct {v2, p0, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 643
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    goto :goto_1
.end method

.method public onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onJsBeforeUnload [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [message] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 10
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "apJsResult"    # Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 652
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onJsConfirm "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-nez v4, :cond_0

    .line 656
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "h5Page == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    move v2, v9

    .line 739
    :goto_0
    return v2

    .line 661
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 662
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "  isFinishing"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-interface {p4}, Lcom/alipay/mobile/nebula/webview/APJsResult;->cancel()V

    move v2, v3

    .line 665
    goto :goto_0

    .line 668
    :cond_2
    instance-of v4, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v4, :cond_3

    .line 669
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "not  H5activity"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 670
    goto :goto_0

    .line 674
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 675
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 676
    .local v0, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-nez v0, :cond_4

    .line 677
    new-instance v8, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 678
    .local v8, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    invoke-virtual {v8, p3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;

    invoke-direct {v4, p0, p4, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$9;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 680
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$8;

    invoke-direct {v4, p0, p4, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$8;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    .line 688
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    move-result-object v2

    .line 697
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .end local v8    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    :goto_1
    move v2, v9

    .line 739
    goto :goto_0

    .line 701
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, p3

    move-object v6, v2

    .line 700
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v7

    .line 704
    .local v7, "dialog":Landroid/app/Dialog;
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$10;

    invoke-direct {v2, p0, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$10;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 705
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 715
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$11;

    invoke-direct {v2, p0, p4, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$11;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    .line 716
    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    .line 726
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;

    invoke-direct {v2, p0, p4}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$12;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsResult;)V

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 735
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    goto :goto_1
.end method

.method public onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
    .locals 7
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "apJsPromptResult"    # Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 746
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onJsPrompt\uff1a url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " defaultValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 749
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->handleMsgFromJs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    const-string/jumbo v2, "true"

    invoke-interface {p5, v2}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    move v2, v6

    .line 806
    :cond_0
    :goto_0
    return v2

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-nez v3, :cond_2

    .line 756
    invoke-interface {p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    move v2, v6

    .line 757
    goto :goto_0

    .line 760
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 761
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 762
    :cond_3
    invoke-interface {p5}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->cancel()V

    goto :goto_0

    .line 766
    :cond_4
    instance-of v3, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v3, :cond_0

    .line 771
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    const/4 v2, 0x0

    .line 772
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .local v0, "h5PromptDialog":Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->show()V

    .line 776
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->getInputContent()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 778
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;

    invoke-direct {v2, p0, p5, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$13;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setPositiveListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;)V

    .line 787
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;

    invoke-direct {v2, p0, p5}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$14;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setNegativeListener(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickNegativeListener;)V

    .line 797
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$15;

    invoke-direct {v2, p0, p5}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$15;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move v2, v6

    .line 806
    goto :goto_0
.end method

.method public onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 4
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "newProgress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 311
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onProgressChanged [progress] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-eqz v1, :cond_1

    .line 316
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 317
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    const-string/jumbo v2, "h5PageProgress"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 320
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method public onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedTitle [title] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->pageData:Lior;

    .line 5541
    const-string/jumbo v2, "H5PageData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setTitle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    iput-object p2, v1, Lior;->z:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-eqz v1, :cond_0

    .line 329
    const-string/jumbo v1, "javascript:{window.__alipayConsole__ = window.console}"

    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 332
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    const-string/jumbo v2, "h5PageReceivedTitle"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 336
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedTouchIconUrl. [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [precomposed] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    .line 812
    return-void
.end method

.method public onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 567
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onShowCustomView [SDK Version] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 548
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Z)V
    .locals 10
    .param p1, "callback"    # Landroid/webkit/ValueCallback;
    .param p2, "array"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 452
    .local v6, "ctx":Landroid/content/Context;
    :try_start_0
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 453
    .local v3, "activity":Landroid/app/Activity;
    if-eqz v3, :cond_0

    .line 457
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 458
    .local v2, "manager":Ldq;
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 459
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "FILE_CHOOSER_RESULT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Ldq;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->previousReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v8}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 513
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;

    invoke-direct {v9, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 515
    .end local v2    # "manager":Ldq;
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 516
    .local v7, "e":Ljava/lang/ClassCastException;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception detail"

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 517
    .end local v7    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v7

    .line 518
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception detail"

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
