.class public Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;
.super Lgvu;
.source "DingDingMiniAppFriendShareUnit.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 32
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    .line 34
    const-string/jumbo v0, "lwfrom=user_dingminiappfriend"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->b:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    .line 51
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->c:Lgwm;

    .line 52
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .prologue
    const/4 v3, 0x0

    .line 108
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string/jumbo v0, "@lALPBbCc1ZiCOUnNAQrNAeA"

    iput-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 116
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent_key_for_miniapp_msg"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_share_mini_app_new_api"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v3, 0x10008000

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->c:Lgwm;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->c:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 56
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[DingDingMiniAppFriendShareUnit] share clicked"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[DingDingMiniAppFriendShareUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->c:Lgwm;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->c:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 1070
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;-><init>()V

    .line 1071
    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->mdVersion:I

    .line 1072
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getExtention()Ljava/util/Map;

    move-result-object v2

    .line 1073
    if-eqz v2, :cond_3

    .line 1074
    const-string/jumbo v0, "miniAppTitle"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    .line 1075
    const-string/jumbo v0, "miniAppIcon"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    .line 1076
    const-string/jumbo v0, "miniAppUrl"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    .line 1078
    const-string/jumbo v0, "miniAppImg"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 1080
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    .line 1081
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    .line 1082
    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->mdVersion:I

    .line 1084
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1086
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/share/share/DingDingMiniAppFriendShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V

    goto :goto_0

    .line 1088
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v0, v1, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context should be Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
