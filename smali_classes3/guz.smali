.class public final Lguz;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferTo(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 18
    .end local p0    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "mediaId":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 29
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 32
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
