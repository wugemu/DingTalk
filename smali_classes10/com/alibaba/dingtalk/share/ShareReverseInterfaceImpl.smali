.class public Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;
.super Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
.source "ShareReverseInterfaceImpl.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;-><init>()V

    .line 71
    const-string/jumbo v0, "ShareReverseInterfaceImpl"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 292
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public callbackMessage2ThirdApp(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".ddshare.DDShareActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 193
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkShareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    .local p7, "callback":Lcma;, "Lcma<Lgwn;>;"
    invoke-static {}, Lgwc;->a()Lgwb;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lgwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V

    .line 139
    return-void
.end method

.method public doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mBaseShareUnit"    # Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .param p3, "mShareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 265
    invoke-virtual {p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getShareKey()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "shareKey":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.jsapi.share"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "shareKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 269
    invoke-virtual {p2, p3}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 271
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "shareKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public doShareTextToWeiXin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isTimeline"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 207
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl$2;-><init>(Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;)V

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->doShareText(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)Z

    .line 223
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public newAliPayFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    new-instance v0, Lgvy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgvy;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public newAliPayFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    new-instance v0, Lgvy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lgvy;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public newAliPayTimeLineShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    new-instance v0, Lgvy;

    sget v1, Lgvy;->b:I

    invoke-direct {v0, p1, v1}, Lgvy;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public newAliPayTimeLineShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    new-instance v0, Lgvy;

    sget v1, Lgvy;->b:I

    invoke-direct {v0, p1, v1, p2}, Lgvy;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 490
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newConnectionCircleShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    new-instance v0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newConnectionCircleShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;

    .prologue
    .line 434
    new-instance v0, Lgvt;

    invoke-direct {v0, p1, p2}, Lgvt;-><init>(Landroid/content/Context;Lgwm;)V

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v0, Lgvt;

    invoke-direct {v0, p1, p2, p3}, Lgvt;-><init>(Landroid/content/Context;Lgwm;Ljava/lang/String;)V

    return-object v0
.end method

.method public newCustomShareUnit(Landroid/content/Context;Lgwm;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconRes"    # I

    .prologue
    .line 444
    new-instance v0, Lgvt;

    invoke-direct {v0, p1, p2, p3, p4}, Lgvt;-><init>(Landroid/content/Context;Lgwm;Ljava/lang/String;I)V

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    new-instance v0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 331
    new-instance v0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    return-object v0
.end method

.method public newDingdingMiniAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    new-instance v0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newDingdingMiniAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFacebookFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    new-instance v0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newFacebookFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 336
    new-instance v0, Lgvv;

    invoke-direct {v0, p1, p2}, Lgvv;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Lgvv;

    invoke-direct {v0, p1, p2, p3}, Lgvv;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInvitationManager(Landroid/app/Activity;)Lgwp;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 522
    new-instance v0, Lgvo;

    invoke-direct {v0, p1}, Lgvo;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public newOpenInBrowserUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    new-instance v0, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newOpenInBrowserUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newOpenInUCWebUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    new-instance v0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newOpenInUCWebUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 484
    new-instance v0, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    new-instance v0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 399
    new-instance v0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    return-object v0
.end method

.method public newQQZoneShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 404
    new-instance v0, Lgvw;

    invoke-direct {v0, p1, p2, p3}, Lgvw;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    return-object v0
.end method

.method public newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newShareManager(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)Lgwk;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 280
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    return-object v0
.end method

.method public newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newSinaWeiboShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 429
    new-instance v0, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;Lgwm;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 374
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    return-object v0
.end method

.method public newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newWeixinGroupShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 384
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newWhatsAppFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public newWorkCircleShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    new-instance v0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newWorkCircleShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/alibaba/dingtalk/share/WorkCircleUnit;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
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
    .line 131
    .local p2, "shareModelApiEventListener":Lcma;, "Lcma<Lgwo;>;"
    invoke-static {}, Lgwc;->a()Lgwb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lgwb;->a(Ljava/lang/String;Lcma;)V

    .line 132
    return-void
.end method

.method public parseUrlFilter(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
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
    .line 126
    .local p2, "shareModelApiEventListener":Lcma;, "Lcma<Lgwo;>;"
    invoke-static {}, Lgwc;->a()Lgwb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lgwb;->b(Ljava/lang/String;Lcma;)V

    .line 127
    return-void
.end method

.method public setWebContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "linkUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    .line 111
    .local v0, "shareManager":Lcom/alibaba/dingtalk/share/share/ShareManager;
    invoke-virtual {v0, p3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p2}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setWebContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "linkUrl"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    .line 119
    .local v0, "shareManager":Lcom/alibaba/dingtalk/share/share/ShareManager;
    invoke-virtual {v0, p3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p4}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2, p5}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "shareTitle"    # Ljava/lang/String;
    .param p7, "isShowShareDingtalk"    # Z
    .param p8, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;->shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lgwk$a;)V

    .line 106
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lgwk$a;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "shareTitle"    # Ljava/lang/String;
    .param p7, "isShowShareDingtalk"    # Z
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "listener"    # Lgwk$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    .line 9197
    .local v0, "shareManager":Lcom/alibaba/dingtalk/share/share/ShareManager;
    iput-boolean p7, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->f:Z

    .line 513
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p6}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/lang/String;)V

    .line 10139
    iput-object p9, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->j:Lgwk$a;

    .line 516
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->d()V

    .line 517
    invoke-virtual {v0, p8}, Lcom/alibaba/dingtalk/share/share/ShareManager;->d(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lgwr;Ljava/lang/String;Lgwk$a;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 527
    .local p6, "shareExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    .line 528
    .local v0, "shareManager":Lcom/alibaba/dingtalk/share/share/ShareManager;
    if-eqz p8, :cond_0

    .line 11015
    iget-boolean v1, p8, Lgwr;->a:Z

    .line 11197
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->f:Z

    .line 12023
    iget-boolean v1, p8, Lgwr;->b:Z

    .line 12205
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->g:Z

    .line 13031
    const/4 v1, 0x0

    .line 13214
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->h:Z

    .line 533
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13890
    iget-object v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v1, :cond_1

    .line 13891
    iget-object v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v1, p6}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setExtention(Ljava/util/Map;)V

    .line 535
    :cond_1
    invoke-virtual {v0, p7}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/lang/String;)V

    .line 14139
    iput-object p10, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->j:Lgwk$a;

    .line 537
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->d()V

    .line 538
    invoke-virtual {v0, p9}, Lcom/alibaba/dingtalk/share/share/ShareManager;->d(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public shareMiniAppToFriend(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .prologue
    .line 505
    invoke-static {p1, p2}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V

    .line 506
    return-void
.end method

.method public shareNativeImage(Landroid/app/Activity;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "shareUnit"    # Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->BITMAP:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;)V

    .line 549
    .local v0, "imageInfo":Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;
    invoke-static {p3}, Lcnx;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a([B)Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 550
    invoke-virtual {p2, v0}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto :goto_0
.end method

.method public shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "isSaveDevice"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)I
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "isSaveDevice"    # Z
    .param p5, "systemShare"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 85
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    const-string/jumbo v3, "share"

    const-string/jumbo v4, "[ShareReverseInterfaceImpl] shareNativeImageWithSave bitmap is null or recycled"

    invoke-static {v3, v7, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return v1

    .line 90
    :cond_1
    new-instance v2, Lcom/alibaba/dingtalk/share/share/ShareManager;

    invoke-direct {v2, p1, v7}, Lcom/alibaba/dingtalk/share/share/ShareManager;-><init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V

    .line 93
    .local v2, "shareManager":Lcom/alibaba/dingtalk/share/share/ShareManager;
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->BITMAP:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    invoke-direct {v0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;)V

    .line 95
    .local v0, "imageInfo":Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;
    invoke-static {p2}, Lcnx;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a([B)Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 98
    invoke-virtual {v2, p3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 1236
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1237
    const/4 v1, -0x1

    .line 100
    .local v1, "share":I
    :goto_1
    goto :goto_0

    .line 1240
    .end local v1    # "share":I
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v4

    .line 1242
    instance-of v3, v4, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    if-eqz v3, :cond_4

    move-object v3, v4

    .line 1243
    check-cast v3, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    .line 2055
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a:Z

    .line 1246
    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-static {v3}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v3

    .line 3051
    iget-object v3, v3, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 1251
    invoke-interface {v3}, Lcom/alipay/share/sdk/openapi/IAPApi;->isZFBSupportAPI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1252
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Alipay:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_5
    iget-boolean v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    if-eqz v3, :cond_6

    .line 1256
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_6
    if-eqz p4, :cond_7

    .line 1260
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SaveToDevice:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    :cond_7
    if-eqz p5, :cond_8

    .line 1264
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_8
    new-instance v3, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    iget-object v4, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 1268
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c()I

    move-result v3

    if-nez v3, :cond_9

    .line 1269
    iput-object v7, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    goto/16 :goto_1

    .line 1273
    :cond_9
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 3154
    iput-object v0, v3, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 1274
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    iget-object v4, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->e:Ljava/lang/String;

    .line 3561
    iput-object v4, v3, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    .line 1275
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    new-instance v4, Lcom/alibaba/dingtalk/share/share/ShareManager$1;

    invoke-direct {v4, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$1;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;)V

    .line 3566
    iput-object v4, v3, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

    .line 1286
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 1287
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b()V

    .line 1288
    iget-object v3, v2, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c()I

    move-result v1

    goto/16 :goto_1
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    .local p4, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {v0, p1, p4}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 6154
    iput-object p5, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 245
    .local v0, "box":Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6561
    iput-object p2, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    .line 7114
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7115
    iput-object p3, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b:Ljava/lang/String;

    .line 249
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 250
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b()V

    .line 251
    return-void

    .line 7117
    :cond_1
    const-string/jumbo v1, "to"

    iput-object v1, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    .local p3, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5154
    iput-object p4, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 235
    .local v0, "box":Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5561
    iput-object p2, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 239
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b()V

    .line 240
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 1
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
    .line 227
    .local p2, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 4154
    iput-object p3, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 228
    .local v0, "box":Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 229
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b()V

    .line 230
    return-void
.end method

.method public showShareActionBox(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    .local p2, "mShareList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .local p3, "mShareInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/ShareInfo;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 7583
    .local v0, "box":Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
    iput-object p3, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d:Ljava/util/List;

    .line 8579
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a:Z

    .line 258
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 259
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b()V

    .line 260
    return-void
.end method

.method public showShareSuccessDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "thirdName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "activity can not null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lgvn$g;->dialog_share_success_title_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "customTitle":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 152
    .local v2, "items":[Ljava/lang/String;
    sget v3, Lgvn$h;->back_third_app:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 153
    sget v3, Lgvn$h;->stay_ding:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 154
    new-instance v3, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl$1;-><init>(Lcom/alibaba/dingtalk/share/ShareReverseInterfaceImpl;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    .line 171
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 184
    return-void
.end method

.method public systemShareMultiNetImage(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 556
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lgwd;

    invoke-direct {v0, p1, p2, p3, p4}, Lgwd;-><init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 15077
    .local v0, "systemShareForNetImages":Lgwd;
    iget-object v1, v0, Lgwd;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgwd;->b:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgwd;->b:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 15078
    :cond_0
    iget-object v1, v0, Lgwd;->c:Lcma;

    if-eqz v1, :cond_1

    .line 15079
    iget-object v1, v0, Lgwd;->c:Lcma;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 15081
    :cond_1
    :goto_0
    return-void

    .line 15085
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgwd$1;

    invoke-direct {v2, v0}, Lgwd$1;-><init>(Lgwd;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 15096
    invoke-virtual {v0}, Lgwd;->a()V

    goto :goto_0
.end method
