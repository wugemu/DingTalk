.class public final Lcru;
.super Ljava/lang/Object;
.source "MediaStrUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6
    .param p0, "mediaIdStr"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x1

    .line 24
    .local v0, "emotionType":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    const/4 v4, 0x1

    .line 48
    :goto_0
    return v4

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 31
    .local v2, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    .line 32
    const/4 v0, 0x2

    .end local v2    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :cond_1
    :goto_1
    move v4, v0

    .line 48
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "ex":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 38
    .end local v1    # "ex":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 39
    const-string/jumbo v4, ".gif"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    const/4 v0, 0x2

    goto :goto_1

    .line 42
    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 43
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const/4 v0, 0x2

    goto :goto_1
.end method
