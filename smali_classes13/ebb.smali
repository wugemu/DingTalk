.class public final Lebb;
.super Lcrt;
.source "GifUtil.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:J

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x12c

    .line 36
    sput v0, Lebb;->a:I

    .line 37
    sput v0, Lebb;->b:I

    .line 38
    const-wide/32 v0, 0x100000

    sput-wide v0, Lebb;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcrt;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lebb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lebb;->e()V

    .line 89
    :cond_0
    sget v0, Lebb;->a:I

    return v0
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 64
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v0, Lebb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {}, Lebb;->e()V

    .line 64
    :cond_2
    sget v0, Lebb;->a:I

    sget v1, Lebb;->b:I

    invoke-static {p0, p1, p2, v0, v1}, Lebb;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lebb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lebb;->e()V

    .line 98
    :cond_0
    sget v0, Lebb;->b:I

    return v0
.end method

.method public static b(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 10
    .param p0, "originalUrl"    # Ljava/lang/String;
    .param p1, "expectGifWidth"    # I
    .param p2, "expectedGifHeight"    # I
    .param p3, "expectedNormalWidth"    # I
    .param p4, "expectedNormalHeight"    # I

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xa0

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    const/4 p0, 0x0

    .line 1077
    .end local p0    # "originalUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 166
    .restart local p0    # "originalUrl":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 167
    .local v0, "canGenerateThumb":Z
    const/4 v2, 0x0

    .line 168
    .local v2, "isGif":Z
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Lcru;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 173
    :goto_1
    const/4 v0, 0x1

    .line 184
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 187
    if-eqz v2, :cond_6

    .line 1076
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1080
    invoke-static {p0, p1, p2, v8, v8}, Lebb;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move v2, v5

    .line 172
    goto :goto_1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_4
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "mediaIdFromUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    invoke-static {v3}, Lcru;->a(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v2, v4

    .line 181
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v2, v5

    .line 180
    goto :goto_3

    .line 190
    .end local v3    # "mediaIdFromUrl":Ljava/lang/String;
    :cond_6
    invoke-static {p0, v9, v9}, Lebb;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lebb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lebb;->e()V

    .line 107
    :cond_0
    sget-wide v0, Lebb;->c:J

    return-wide v0
.end method

.method public static c(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 10
    .param p0, "originalUrl"    # Ljava/lang/String;
    .param p1, "expectGifWidth"    # I
    .param p2, "expectedGifHeight"    # I
    .param p3, "expectedNormalWidth"    # I
    .param p4, "expectedNormalHeight"    # I

    .prologue
    const/16 v9, 0x1f4

    const/16 v8, 0x12c

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    const/4 p0, 0x0

    .line 225
    .end local p0    # "originalUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 201
    .restart local p0    # "originalUrl":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 202
    .local v0, "canGenerateThumb":Z
    const/4 v2, 0x0

    .line 203
    .local v2, "isGif":Z
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p0}, Lcru;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v7, :cond_3

    move v2, v4

    .line 208
    :goto_1
    const/4 v0, 0x1

    .line 219
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 222
    if-eqz v2, :cond_6

    .line 223
    invoke-static {p0, p1, p2, v9, v9}, Lebb;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move v2, v5

    .line 207
    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_4
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "mediaIdFromUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 215
    invoke-static {v3}, Lcru;->a(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v2, v4

    .line 216
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v2, v5

    .line 215
    goto :goto_3

    .line 225
    .end local v3    # "mediaIdFromUrl":Ljava/lang/String;
    :cond_6
    invoke-static {p0, v8, v8}, Lebb;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_emotion"

    const-string/jumbo v4, "im_chat_continuous_send_emotion_enable"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "sendEnable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    const-string/jumbo v2, "0"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static e()V
    .locals 10

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xa0

    .line 112
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "dt_emotion"

    const-string/jumbo v7, "gif_size_rule"

    invoke-virtual {v5, v6, v7}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "sizeRule":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 115
    sput-object v3, Lebb;->d:Ljava/lang/String;

    .line 118
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "maxWidth"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    .local v4, "width":I
    const-string/jumbo v5, "maxHeight"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "height":I
    if-gt v4, v9, :cond_0

    if-gt v4, v8, :cond_1

    .line 124
    :cond_0
    const/16 v4, 0x12c

    .line 127
    :cond_1
    if-gt v1, v9, :cond_2

    if-gt v1, v8, :cond_3

    .line 128
    :cond_2
    const/16 v1, 0x12c

    .line 131
    :cond_3
    sput v4, Lebb;->a:I

    .line 132
    sput v1, Lebb;->b:I

    .line 133
    const-string/jumbo v5, "maxContentSize"

    const-wide/32 v6, 0x100000

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lebb;->c:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "height":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "width":I
    :cond_4
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
