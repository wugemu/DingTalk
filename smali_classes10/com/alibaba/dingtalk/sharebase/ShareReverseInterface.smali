.class public Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
.super Lckb;
.source "ShareReverseInterface.java"


# static fields
.field public static final INTENT_KEY_SHARE:Ljava/lang/String; = "intent.action.jsapi.share"

.field public static final INTENT_KEY_SHARE_CANCEL:Ljava/lang/String; = "intent.action.jsapi.share.cancel"

.field public static final KEY_SHARE_TYPE:Ljava/lang/String; = "shareKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    return-object v0
.end method


# virtual methods
.method public callbackMessage2ThirdApp(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public checkShareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/Integer;
    .param p5, "shareModel"    # Lgwo;
    .param p6, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lgwo;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p7, "callback":Lcma;, "Lcma<Lgwn;>;"
    return-void
.end method

.method public doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mBaseShareUnit"    # Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .param p3, "mShareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .prologue
    .line 126
    return-void
.end method

.method public doShareTextToWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isTimeline"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 292
    return-void
.end method

.method public newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAliPayFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAliPayTimeLineShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAliPayTimeLineShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public newConnectionCircleShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public newConnectionCircleShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconRes"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDingdingMiniAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public newDingdingMiniAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public newFacebookFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public newFacebookFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public newInvitationManager(Landroid/app/Activity;)Lgwp;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOpenInBrowserUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOpenInBrowserUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOpenInUCWebUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOpenInUCWebUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public newQQZoneShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSinaWeiboShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWeixinGroupShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWorkCircleShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public newWorkCircleShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "callback":Lcma;, "Lcma<Lgwo;>;"
    return-void
.end method

.method public parseUrlFilter(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "callback":Lcma;, "Lcma<Lgwo;>;"
    return-void
.end method

.method public setWebContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "linkUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public setWebContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "linkUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "shareTitle"    # Ljava/lang/String;
    .param p7, "isShowShareDingtalk"    # Z
    .param p8, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lgwk$a;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "shareTitle"    # Ljava/lang/String;
    .param p7, "isShowShareDingtalk"    # Z
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "listener"    # Lgwk$a;

    .prologue
    .line 296
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lgwr;Ljava/lang/String;Lgwk$a;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p7, "shareTitle"    # Ljava/lang/String;
    .param p8, "option"    # Lgwr;
    .param p9, "key"    # Ljava/lang/String;
    .param p10, "listener"    # Lgwk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lgwr;",
            "Ljava/lang/String;",
            "Lgwk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    .local p6, "shareExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public shareMiniAppToFriend(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .prologue
    .line 287
    return-void
.end method

.method public shareNativeImage(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "shareUnit"    # Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 324
    return-void
.end method

.method public shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "isSaveDevice"    # Z

    .prologue
    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)I
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "isSaveDevice"    # Z
    .param p5, "systemShare"    # Z

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boxTitle"    # Ljava/lang/String;
    .param p3, "shareItemClickStatisticKey"    # Ljava/lang/String;
    .param p5, "info"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p4, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boxTitle"    # Ljava/lang/String;
    .param p4, "info"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    .local p2, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .local p3, "mShareInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "shareUnitList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .local p3, "shareUnitKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    return-void
.end method

.method public showShareSuccessDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "thirdName"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public showShareSuccessDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lgwl;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "thridName"    # Ljava/lang/String;
    .param p4, "listener"    # Lgwl;

    .prologue
    .line 81
    return-void
.end method

.method public systemShareMultiNetImage(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imagesArray"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method
