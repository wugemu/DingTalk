.class public final Lhrb;
.super Ljava/lang/Object;
.source "UidTokenWrapper.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expireTime"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lhrb;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lhrb;->b:J

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lhrb;
    .locals 6
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "js":Lorg/json/JSONObject;
    const-string/jumbo v5, "uidTokenCookie"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "uidTokenCookie":Ljava/lang/String;
    const-string/jumbo v5, "expireTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 37
    .local v2, "expireTime":J
    new-instance v5, Lhrb;

    invoke-direct {v5, v4, v2, v3}, Lhrb;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "expireTime":J
    .end local v4    # "uidTokenCookie":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v1, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "uidTokenCookie"

    iget-object v3, p0, Lhrb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string/jumbo v2, "expireTime"

    iget-wide v4, p0, Lhrb;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
