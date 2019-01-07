.class public final Ldjy;
.super Ljava/lang/Object;
.source "MediaIdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    move-object v0, p0

    .line 17
    .local v0, "mediaId":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    .locals 2
    .param p0, "mediaIdStr"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v3

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "mediaId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .local v2, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 47
    .end local v2    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method
