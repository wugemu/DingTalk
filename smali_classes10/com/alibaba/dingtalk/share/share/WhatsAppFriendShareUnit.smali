.class public Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;
.super Lgvu;
.source "WhatsAppFriendShareUnit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 26
    const-string/jumbo v0, "lwfrom=user_whatsapp"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 26
    const-string/jumbo v0, "lwfrom=user_whatsapp"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageInfo"    # Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .prologue
    const/4 v7, 0x1

    .line 109
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string/jumbo v2, "com.whatsapp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget v2, Lgvn$h;->share_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 118
    const-string/jumbo v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "whatsapp"

    aput-object v6, v4, v5

    const-string/jumbo v5, " share image default error:"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    sget v2, Lgvn$h;->share_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v2, "com.whatsapp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const-string/jumbo v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "whatsapp"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " share default error:"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    .line 44
    return-void
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

    .line 48
    const-string/jumbo v0, "share"

    const-string/jumbo v1, "[WhatsAppFriendShareUnit] share clicked"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-nez p1, :cond_1

    .line 1062
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_0
    :goto_0
    return-void

    .line 1057
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_1
    const-string/jumbo v0, "share"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "whatsapp"

    aput-object v2, v1, v4

    const-string/jumbo v2, " share default"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    instance-of v0, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v0, :cond_4

    .line 1062
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .line 1074
    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    iget-object v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1075
    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V

    goto :goto_0

    .line 1076
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1077
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1101
    :cond_3
    const-string/jumbo v0, "share"

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "whatsapp"

    aput-object v2, v1, v4

    const-string/jumbo v2, "share image empty source"

    aput-object v2, v1, v5

    .line 1102
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1064
    .restart local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    .line 1065
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    .line 1066
    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
