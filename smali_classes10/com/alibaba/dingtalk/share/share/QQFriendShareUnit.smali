.class public Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;
.super Lgvu;
.source "QQFriendShareUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 45
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    .line 1221
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1224
    sget v1, Lgvn$d;->ic_share_qq_friend_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$h;->share_qq_friend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1228
    const-string/jumbo v1, "Share to QQ"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v1, "qqfriend"

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 32
    const-string/jumbo v0, "lwfrom=user_qq"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->b:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c:Lgwm;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getQQExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    move-result-object v0

    new-instance v5, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$1;

    invoke-direct {v5, p0, p3}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->shareLinkToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljuc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share default error:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .param p1, "localPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share local img"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getQQExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$3;-><init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/qq/QQExecutor;->shareLocalImageToQQ(Ljava/lang/String;Ljuc;)V

    .line 183
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c:Lgwm;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 55
    :cond_0
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 6
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[QQFriendShareUnit] share clicked"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c:Lgwm;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 63
    :cond_0
    if-nez p1, :cond_2

    .line 64
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[QQFriendShareUnit] shareInfo is null, cancelShare"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_2
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v0, :cond_7

    .line 69
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 2128
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2129
    :cond_3
    const-string/jumbo v0, "share"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "qq"

    aput-object v2, v1, v4

    const-string/jumbo v2, " share img not ready"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 2133
    :cond_4
    iget-object v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2134
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2135
    const-string/jumbo v0, "share"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "qq"

    aput-object v2, v1, v4

    const-string/jumbo v2, " save bitmap"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;-><init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    .line 2190
    const-string/jumbo v0, "THREAD"

    .line 2191
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2192
    new-instance v3, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;-><init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Landroid/graphics/Bitmap;Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2150
    :cond_5
    const-string/jumbo v0, "share"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "qq"

    aput-object v2, v1, v4

    const-string/jumbo v2, " bitmap not exists"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 2154
    :cond_6
    iget-object v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3077
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_7
    const-string/jumbo v0, "share"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "qq"

    aput-object v2, v1, v4

    const-string/jumbo v2, " share default"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 3079
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 3080
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3081
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v4

    .line 3083
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 3084
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3088
    :cond_8
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
