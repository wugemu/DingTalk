.class public final Lcn/com/chinatelecom/gateway/lib/a;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/chinatelecom/gateway/lib/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcn/com/chinatelecom/gateway/lib/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2144
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 3028
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3029
    const-string/jumbo v2, "version"

    const-string/jumbo v3, "CTGS-SDK-v1.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    const-string/jumbo v2, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    const-string/jumbo v2, "bussinessType"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    invoke-static {p1, p2, v1, v0}, Lcn/com/chinatelecom/gateway/lib/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2146
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request params : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const-string/jumbo v2, "http://id6.me/openapi/networkauth/preGetMobile.do"

    invoke-static {p0, v2, v1, p4}, Lcn/com/chinatelecom/gateway/lib/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    .line 2148
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request result : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    invoke-static {v1, v0}, Lcn/com/chinatelecom/gateway/lib/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    const-string/jumbo v0, "{\"result\":-8001,\"msg\":\"\u8bf7\u6c42\u5f02\u5e38\"}"

    .line 17
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-object v0

    .line 168
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 171
    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    if-eqz v2, :cond_1

    const/16 v4, 0x7532

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1211
    invoke-static {v3, p1}, Lcn/com/chinatelecom/gateway/lib/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "decryptResult error"

    invoke-static {v2, v3, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcn/com/chinatelecom/gateway/lib/n$a;ILcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    invoke-static {p1}, Lcn/com/chinatelecom/gateway/lib/n;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 118
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/e;

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/chinatelecom/gateway/lib/e;-><init>(Lcn/com/chinatelecom/gateway/lib/a;Ljava/util/concurrent/Future;ILcn/com/chinatelecom/gateway/lib/n$a;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 139
    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/n;->a(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 190
    const-string/jumbo v0, ""

    .line 192
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 196
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "generateAesKey error"

    invoke-static {v2, v3, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    if-gtz v0, :cond_0

    const/16 v0, 0x2710

    move v7, v0

    .line 34
    :goto_0
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/chinatelecom/gateway/lib/b;-><init>(Lcn/com/chinatelecom/gateway/lib/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 43
    invoke-direct {p0, v0, v7, p5}, Lcn/com/chinatelecom/gateway/lib/a;->a(Lcn/com/chinatelecom/gateway/lib/n$a;ILcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 44
    return-void

    .line 33
    :cond_0
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    move v7, v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    if-gtz v0, :cond_0

    const/16 v0, 0x2710

    move v7, v0

    .line 55
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 56
    new-instance v8, Lcn/com/chinatelecom/gateway/lib/h;

    invoke-direct {v8}, Lcn/com/chinatelecom/gateway/lib/h;-><init>()V

    .line 57
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/chinatelecom/gateway/lib/c;-><init>(Lcn/com/chinatelecom/gateway/lib/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 86
    invoke-virtual {v8, p1, v0}, Lcn/com/chinatelecom/gateway/lib/h;->a(Landroid/content/Context;Lcn/com/chinatelecom/gateway/lib/h$a;)V

    .line 1070
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/i;

    invoke-direct {v0, v8, v7}, Lcn/com/chinatelecom/gateway/lib/i;-><init>(Lcn/com/chinatelecom/gateway/lib/h;I)V

    .line 1100
    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/n;->a(Ljava/lang/Runnable;)V

    .line 107
    :goto_1
    return-void

    .line 54
    :cond_0
    sget v0, Lcn/com/chinatelecom/gateway/lib/CtAuth;->mTotalTimeout:I

    move v7, v0

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcn/com/chinatelecom/gateway/lib/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/com/chinatelecom/gateway/lib/d;-><init>(Lcn/com/chinatelecom/gateway/lib/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 105
    invoke-direct {p0, v0, v7, p5}, Lcn/com/chinatelecom/gateway/lib/a;->a(Lcn/com/chinatelecom/gateway/lib/n$a;ILcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    goto :goto_1
.end method
