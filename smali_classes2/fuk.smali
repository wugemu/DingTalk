.class public final Lfuk;
.super Ljava/lang/Object;
.source "ProfileIntentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)J
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    if-nez p0, :cond_1

    move-wide v0, v4

    .line 43
    :cond_0
    :goto_0
    return-wide v0

    .line 30
    :cond_1
    const-string/jumbo v6, "user_id"

    invoke-virtual {p0, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 31
    .local v0, "mUid":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 32
    const-string/jumbo v6, "profile"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "sUid":Ljava/lang/String;
    invoke-static {v2}, Lfuk;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 35
    .end local v2    # "sUid":Ljava/lang/String;
    :cond_2
    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 38
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 39
    const-string/jumbo v4, "profile"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .restart local v2    # "sUid":Ljava/lang/String;
    invoke-static {v2}, Lfuk;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4
    .param p0, "sUid"    # Ljava/lang/String;

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "mUid":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {p0}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    :cond_0
    :goto_0
    return-wide v0

    .line 1109
    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    goto :goto_0
.end method
