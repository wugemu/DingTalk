.class public Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;
.super Lgvu;
.source "DingDingFriendShareUnit.java"


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lgwm;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "listener"    # Lgwm;

    .prologue
    .line 49
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p2}, Lgwa;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    .line 34
    const-string/jumbo v0, "lwfrom=user_dingfriend"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->c:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->d:Lgwm;

    .line 52
    return-void
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2155
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2156
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2157
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;
    .param p1, "x1"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "imgUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    .line 119
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, p1, v5, v6}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 128
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "share"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DingDingFriendShareUnit]MediaStore.Images.Media.insertImage failed, error="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 121
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2109
    if-eqz p1, :cond_3

    .line 2110
    const-string/jumbo v5, "dcim/Share/"

    .line 2111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2112
    invoke-static {p1, v5, v6, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "savedPath":Ljava/lang/String;
    :cond_3
    goto :goto_1
.end method

.method private b(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .param p2, "picPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string/jumbo v1, "share_url"

    const-string/jumbo v2, "friend_url"

    invoke-static {p1, v2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "share_pic_url"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "share_title"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "share_text"

    invoke-virtual {p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "share"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string/jumbo v1, "share_pic_url_to_ding"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const-string/jumbo v1, "from_share"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a:Z

    if-eqz v1, :cond_1

    .line 91
    const-string/jumbo v1, "intent_key_share_source_from_inner"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 95
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->d:Lgwm;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->d:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b:Landroid/content/Context;

    .line 169
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[DingDingFriendShareUnit] share clicked"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[DingDingFriendShareUnit] shareInfo is null, cancelShare"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->d:Lgwm;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->d:Lgwm;

    invoke-interface {v1, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 69
    :cond_1
    instance-of v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 70
    check-cast v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v1, "THREAD"

    .line 1103
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1104
    new-instance v2, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Landroid/graphics/Bitmap;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 73
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->b(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
