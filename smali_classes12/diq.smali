.class public final Ldiq;
.super Ljava/lang/Object;
.source "AuthUrlUtil.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/image/ImageMagician;

.field private static b:Lcom/alibaba/doraemon/audio/AudioMagician;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "commonVideoContent"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p0, p1}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaContent"    # Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 51
    :cond_0
    instance-of v0, p0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    instance-of v0, p0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    if-eqz v0, :cond_4

    .line 59
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p0, p1}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 90
    .end local p0    # "mediaAuthUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 85
    .restart local p0    # "mediaAuthUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 87
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "authMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    .end local p0    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 107
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ldiq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p0, p1, p2}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaContent"    # Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 78
    invoke-static {p0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "authMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ldiq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldiq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 168
    :goto_0
    return v1

    .line 1027
    :cond_0
    sget-object v1, Ldiq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v1, :cond_1

    .line 1028
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    sput-object v1, Ldiq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1030
    :cond_1
    sget-object v0, Ldiq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 165
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 168
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 179
    :goto_0
    return v1

    .line 1034
    :cond_0
    sget-object v1, Ldiq;->b:Lcom/alibaba/doraemon/audio/AudioMagician;

    if-nez v1, :cond_1

    .line 1035
    const-string/jumbo v1, "AUDIO"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/audio/AudioMagician;

    sput-object v1, Ldiq;->b:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 1037
    :cond_1
    sget-object v0, Ldiq;->b:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 176
    .local v0, "audioMagician":Lcom/alibaba/doraemon/audio/AudioMagician;
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/audio/AudioMagician;->hasAudioCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 179
    goto :goto_0
.end method
