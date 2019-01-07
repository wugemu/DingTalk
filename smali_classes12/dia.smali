.class public Ldia;
.super Ljava/lang/Object;
.source "EventGifManager.java"


# static fields
.field private static volatile b:Ldia;


# instance fields
.field private a:Ldtc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ldia;->b()Ldtc;

    move-result-object v0

    iput-object v0, p0, Ldia;->a:Ldtc;

    .line 40
    return-void
.end method

.method public static a()Ldia;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Ldia;->b:Ldia;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Ldia;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Ldia;->b:Ldia;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldia;

    invoke-direct {v0}, Ldia;-><init>()V

    sput-object v0, Ldia;->b:Ldia;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Ldia;->b:Ldia;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldia;)Ldtc;
    .locals 1
    .param p0, "x0"    # Ldia;

    .prologue
    .line 25
    iget-object v0, p0, Ldia;->a:Ldtc;

    return-object v0
.end method

.method public static a(J)V
    .locals 2
    .param p0, "newVersion"    # J

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 57
    const-string/jumbo v0, "pref_key_event_gif_version"

    invoke-static {v0, p0, p1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic a(Ldia;Ldtc;)V
    .locals 0
    .param p0, "x0"    # Ldia;
    .param p1, "x1"    # Ldtc;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Ldia;->a(Ldtc;)V

    return-void
.end method

.method private static b()Ldtc;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string/jumbo v5, "pref_key_event_icon_result_object"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 166
    :goto_0
    return-object v1

    .line 155
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Ldtc;

    invoke-direct {v1}, Ldtc;-><init>()V

    .line 157
    .local v1, "emotionIconResultObject":Ldtc;
    const-string/jumbo v5, "topicId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v1, Ldtc;->a:J

    .line 158
    const-string/jumbo v5, "authMediaId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Ldtc;->b:Ljava/lang/String;

    .line 159
    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Ldtc;->c:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "emotionIconResultObject":Ldtc;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v4

    .line 166
    goto :goto_0
.end method


# virtual methods
.method a(Ldtc;)V
    .locals 6
    .param p1, "resultObject"    # Ldtc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iput-object p1, p0, Ldia;->a:Ldtc;

    .line 130
    if-nez p1, :cond_0

    .line 131
    const-string/jumbo v2, "pref_key_event_icon_result_object"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "topicId"

    iget-wide v4, p1, Ldtc;->a:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    const-string/jumbo v2, "authMediaId"

    iget-object v3, p1, Ldtc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string/jumbo v2, "version"

    iget-wide v4, p1, Ldtc;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v2, "pref_key_event_icon_result_object"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
