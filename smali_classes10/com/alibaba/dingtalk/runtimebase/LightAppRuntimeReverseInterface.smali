.class public abstract Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
.super Lckb;
.source "LightAppRuntimeReverseInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lckb;-><init>()V

    .line 247
    return-void
.end method

.method public static getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    return-object v0
.end method


# virtual methods
.method public beaconListUpdate()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public clearWebViewCache()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public createRuntimeEntry(Landroid/content/Context;)Lhdf;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSystemWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetchMiniAppIconListByType(Ljava/lang/String;Lhma;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lhma;

    .prologue
    .line 242
    return-void
.end method

.method public getAlarmInterface()Lgvi;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthCode(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public getCheckInRemindPlan(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/Set<Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;>;>;"
    return-void
.end method

.method public getCidTokenForOrg(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public getDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    return-void
.end method

.method public getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnLightAppNotificationListener()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageErrorTipsView(Landroid/content/Context;Ljava/lang/String;Lcmi;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcmi",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "callback":Lcmi;, "Lcmi<Landroid/view/View;>;"
    return-void
.end method

.method public getPageStatus(Ljava/lang/Object;)I
    .locals 1
    .param p1, "preloadInstance"    # Ljava/lang/Object;

    .prologue
    .line 200
    const/4 v0, -0x1

    return v0
.end method

.method public getPermanentEncryptedCid(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "agentId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public getWebViewIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleHpmConfigData(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public handleJsapiConfigData(Lorg/json/JSONArray;)Z
    .locals 1
    .param p1, "arr"    # Lorg/json/JSONArray;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public handleLanguageChanged()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public hpmCheckUpdate()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 43
    return-void
.end method

.method public initBeacon()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public initBiz()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public initHpm()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public initSecurityGuard(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    return-void
.end method

.method public isH5Activity(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public isInNewTask(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isMiniAppComponentFeatureActived()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public isOnStick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isOpenApp4MiniApp(Ljava/lang/String;Ljava/lang/String;Lgvk;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "callback"    # Lgvk;

    .prologue
    .line 233
    return-void
.end method

.method public isRuntimeEntryInstanceofWeex(Lhdf;)Z
    .locals 1
    .param p1, "iRuntimeEntry"    # Lhdf;

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public messageActionACK(JLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "messageId"    # J
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public motuCommitStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Z

    .prologue
    .line 157
    return-void
.end method

.method public nav2CustomWebViewDialogActivity(Landroid/app/Activity;Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "customWebViewDialogLogic"    # Lcom/alibaba/dingtalk/runtimebase/CustomWebViewDialogLogic;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    return-void
.end method

.method public navToAttendRoutePage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 120
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p6, "chatName"    # Ljava/lang/String;
    .param p7, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "intentFlag"    # I

    .prologue
    .line 89
    return-void
.end method

.method public navToCommonWebView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "chatName"    # Ljava/lang/String;
    .param p5, "chatId"    # Ljava/lang/String;
    .param p6, "msgId"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public navToGraphicLiteracyFromIM(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method

.method public navToMiniAppList(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 238
    return-void
.end method

.method public navToPreloadPage(Landroid/content/Context;Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .prologue
    .line 188
    const/4 v0, -0x1

    return v0
.end method

.method public navToWebViewDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public navToWebViewDialogForResult(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onHomeTabSeleceted(I)V
    .locals 0
    .param p1, "tabIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public onHomeTabSeleceted(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagTag"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public onLogin()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onLogout()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 217
    return-void
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;

    .prologue
    .line 220
    return-void
.end method

.method public openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;
    .param p5, "ddMode"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public pauseBackgroundAudio()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public playBackgroundAudio()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public preloadPage(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 1
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .prologue
    .line 196
    const/4 v0, -0x1

    return v0
.end method

.method public preloadResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public preloadResourceByAppId(J)V
    .locals 0
    .param p1, "appId"    # J

    .prologue
    .line 101
    return-void
.end method

.method public prepareTargetEApp(Landroid/os/Bundle;Lhlo;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lhlo;

    .prologue
    .line 289
    return-void
.end method

.method public receiveHpmNotify(Lgvl;)V
    .locals 0
    .param p1, "model"    # Lgvl;

    .prologue
    .line 97
    return-void
.end method

.method public recyclePreloadPage(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z
    .locals 1
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public removeDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public reportAppMalfunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 284
    return-void
.end method

.method public restoreWhiteList(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public saveSWAppsFastConfigData(Ljava/lang/String;)V
    .locals 0
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public saveSWFastConfigData(Ljava/lang/String;)V
    .locals 0
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public setCheckInListener(Lgvg;)V
    .locals 0
    .param p1, "listener"    # Lgvg;

    .prologue
    .line 295
    return-void
.end method

.method public setDomainStorageItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public setOnLightAppNotificationListener(Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface$a;

    .prologue
    .line 253
    return-void
.end method

.method public setWhiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public showPrivacyDialog(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 291
    return-void
.end method

.method public showSticky(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public startAutoAttendance()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public startHttpOverLWPWithUri(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JLgvh;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "methodType"    # I
    .param p4, "bodyStr"    # Ljava/lang/String;
    .param p5, "timeout"    # J
    .param p7, "callback"    # Lgvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lgvh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public startStepCountService()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public stickPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public updateAllMicroAppsOpenType()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public updateAllMiniAppBizType()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public updateHpmFastConfigData(Ljava/lang/String;)V
    .locals 0
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method

.method public updateMicroAppOpenType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public updateStickPageTestData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public updateWebConfigData(Ljava/lang/String;)V
    .locals 0
    .param p1, "configData"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public wrapperMicroMiniAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "agentId"    # Ljava/lang/String;
    .param p4, "corpId"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method
