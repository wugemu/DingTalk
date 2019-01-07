.class public final Lbke;
.super Ljava/lang/Object;
.source "DingUrlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferTo(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 36
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :goto_0
    return-object p0

    .line 34
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v1, "[DingUrlUtil]mediaIdToUrl failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mediaIdOrUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {p0}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 46
    .restart local v0    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 48
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string/jumbo v1, ".gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
