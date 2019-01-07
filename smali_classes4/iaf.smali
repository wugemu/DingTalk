.class public final Liaf;
.super Ljava/lang/Object;
.source "IMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liaf$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Liaf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Liaf;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lidy;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # J

    .prologue
    .line 75
    invoke-static {p0, p1}, Lidy;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 215
    if-eqz p0, :cond_1

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    const-string/jumbo v2, "cid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_0
    const-string/jumbo v2, "msgId"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 222
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 3
    .param p0, "commonVideoContent"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 304
    if-nez p0, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "picAuthMediaId"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    const-string/jumbo v1, "picAuthMediaId"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "picAuthPicUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    .end local v0    # "picAuthPicUrl":Ljava/lang/String;
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaContent"    # Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;
    .locals 3
    .param p0, "mediaContent"    # Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "forceUseAuth"    # Z

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p0, :cond_0

    .line 261
    :goto_0
    return-object v0

    .line 254
    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    if-eqz p1, :cond_3

    .line 259
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    const/4 v2, 0x0

    .line 243
    :goto_0
    return-object v2

    .line 235
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "cid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string/jumbo v2, "msgId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
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
    .line 272
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "authMediaId"    # Ljava/lang/String;
    .param p3, "forceUseAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    .end local p1    # "authMediaId":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 288
    .restart local p1    # "authMediaId":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v1, "authMediaId"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const-string/jumbo v1, "authMediaId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "authUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    .line 291
    goto :goto_0

    .end local v0    # "authUrl":Ljava/lang/String;
    :cond_3
    move-object p1, p0

    .line 294
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    move-object v4, p1

    .line 211
    .end local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v4

    .line 178
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    .line 179
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    .line 180
    .local v5, "type":I
    sparse-switch v5, :sswitch_data_0

    .line 202
    :goto_1
    if-nez v3, :cond_2

    move-object v4, p1

    .line 203
    .end local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 183
    .end local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 184
    .local v2, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    const-string/jumbo v7, "IM"

    invoke-static {p0}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 185
    goto :goto_1

    .line 188
    .end local v2    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :sswitch_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 189
    .local v0, "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    const-string/jumbo v7, "IM"

    invoke-static {p0}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 190
    goto :goto_1

    .line 193
    .end local v0    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    :sswitch_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 194
    .local v1, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    const-string/jumbo v7, "IM"

    invoke-static {p0}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 195
    goto :goto_1

    .line 198
    .end local v1    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :sswitch_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 199
    .local v6, "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    const-string/jumbo v7, "IM"

    invoke-static {p0}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_1

    .line 206
    .end local v6    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    :cond_2
    if-nez p1, :cond_3

    .line 207
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 210
    .restart local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v4, p1

    .line 211
    .end local p1    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x67 -> :sswitch_3
        0xca -> :sswitch_2
        0xfb -> :sswitch_0
        0xfc -> :sswitch_1
        0xfd -> :sswitch_3
        0xfe -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p0, "authBizType"    # Ljava/lang/String;
    .param p1, "authBizEntity"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "authInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "auth_bizType"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v3, "auth_bizEntity"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-string/jumbo v3, "authCode"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "auth_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<*>;"
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    .line 44
    .local v0, "isLogin":Z
    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v1, "[TAG] Check login"

    const-string/jumbo v2, "not login"

    .line 1022
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "101004"

    const-string/jumbo v2, "NOT_LOGIN_ERR"

    invoke-static {p0, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return v0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<*>;",
            "Lcom/alibaba/wukong/im/Message;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<*>;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR message must build from Conversation"

    invoke-static {p0, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<*>;"
    .local p1, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR openid is empty"

    invoke-static {p0, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized b()J
    .locals 6

    .prologue
    .line 79
    const-class v1, Liaf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liaf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x2710

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 80
    sget-object v0, Liaf;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0x9184e72a000L

    mul-long/2addr v2, v4

    invoke-static {}, Liaf;->c()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    add-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)Z
    .locals 2
    .param p0, "mid"    # J

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 8

    .prologue
    .line 129
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v2

    .line 130
    .local v2, "serverTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, "localTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 135
    .end local v0    # "localTime":J
    :cond_0
    :goto_0
    return-wide v0

    .line 133
    .restart local v0    # "localTime":J
    :cond_1
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 134
    goto :goto_0
.end method

.method public static d()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v3

    const-string/jumbo v4, "dt_feature_switch"

    const-string/jumbo v5, "f_im_last_message_group_task"

    invoke-virtual {v3, v4, v5}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 324
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v2

    .line 328
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Lieb;->f(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method
