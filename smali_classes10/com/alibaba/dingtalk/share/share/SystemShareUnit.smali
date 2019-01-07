.class public Lcom/alibaba/dingtalk/share/share/SystemShareUnit;
.super Lgvu;
.source "SystemShareUnit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgwa;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 30
    const-string/jumbo v0, "lwfrom=user_androidsystem"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 30
    const-string/jumbo v0, "lwfrom=user_androidsystem"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SystemShareUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SystemShareUnit;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageInfo"    # Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 112
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    sget v2, Lgvn$h;->share_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 120
    const-string/jumbo v2, "share"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "system"

    aput-object v5, v3, v4

    const-string/jumbo v4, " share image default error:"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 126
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    sget v2, Lgvn$h;->share_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string/jumbo v2, "share"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "system"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " share default error:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SystemShareUnit;Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SystemShareUnit;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public isSupportShare(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    .local p1, "installedPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_share_show_and_sys_enable"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lgvu;->isSupportShare(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 7
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 52
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[SystemShareUnit] share clicked"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-nez p1, :cond_1

    .line 1066
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_0
    :goto_0
    return-void

    .line 1061
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    const-string/jumbo v0, "share"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "system"

    aput-object v2, v1, v4

    const-string/jumbo v2, " share default"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 1078
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    iget-object v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1079
    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1081
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/SystemShareUnit;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1104
    :cond_3
    const-string/jumbo v0, "share"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "system"

    aput-object v2, v1, v4

    const-string/jumbo v2, "share image empty source"

    aput-object v2, v1, v5

    .line 1105
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1068
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    .line 1069
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    .line 1070
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
