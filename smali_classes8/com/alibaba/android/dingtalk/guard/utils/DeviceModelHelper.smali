.class public Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;
.super Ljava/lang/Object;
.source "DeviceModelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$a;,
        Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lbsg;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;->b(Ljava/lang/String;)Lbsg;

    move-result-object v0

    return-object v0
.end method

.method public static a(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "serviceId"    # I
    .param p1, "devId"    # J

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbsg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbsg;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;->b(Lbsg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lbsg;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 254
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lbsg;

    invoke-direct {v2}, Lbsg;-><init>()V

    .line 256
    .local v2, "model":Lbsg;
    const-string/jumbo v3, "gmtCreate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->a:Ljava/lang/Long;

    .line 257
    const-string/jumbo v3, "gmtModified"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->b:Ljava/lang/Long;

    .line 258
    const-string/jumbo v3, "orgId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->c:Ljava/lang/Long;

    .line 259
    const-string/jumbo v3, "sn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbsg;->d:Ljava/lang/String;

    .line 260
    const-string/jumbo v3, "description"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbsg;->e:Ljava/lang/String;

    .line 261
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbsg;->f:Ljava/lang/Integer;

    .line 262
    const-string/jumbo v3, "creatorUid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->g:Ljava/lang/Long;

    .line 263
    const-string/jumbo v3, "lastModifierUid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->h:Ljava/lang/Long;

    .line 264
    const-string/jumbo v3, "deviceUid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbsg;->i:Ljava/lang/Long;

    .line 265
    const-string/jumbo v3, "corpId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbsg;->j:Ljava/lang/String;

    .line 266
    const-string/jumbo v3, "deviceNick"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lbsg;->k:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "model":Lbsg;
    :goto_0
    return-object v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 270
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Lbsg;)Ljava/lang/String;
    .locals 5
    .param p0, "model"    # Lbsg;

    .prologue
    const/4 v2, 0x0

    .line 228
    if-nez p0, :cond_0

    .line 248
    :goto_0
    return-object v2

    .line 232
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "gmtCreate"

    iget-object v4, p0, Lbsg;->a:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string/jumbo v3, "gmtModified"

    iget-object v4, p0, Lbsg;->b:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string/jumbo v3, "orgId"

    iget-object v4, p0, Lbsg;->c:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string/jumbo v3, "sn"

    iget-object v4, p0, Lbsg;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string/jumbo v3, "description"

    iget-object v4, p0, Lbsg;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lbsg;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string/jumbo v3, "creatorUid"

    iget-object v4, p0, Lbsg;->g:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v3, "lastModifierUid"

    iget-object v4, p0, Lbsg;->h:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v3, "deviceUid"

    iget-object v4, p0, Lbsg;->i:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v3, "corpId"

    iget-object v4, p0, Lbsg;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v3, "deviceNick"

    iget-object v4, p0, Lbsg;->k:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 246
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
