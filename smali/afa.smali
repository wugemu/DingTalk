.class public final Lafa;
.super Ljava/lang/Object;
.source "MailListBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafa$a;
    }
.end annotation


# static fields
.field private static e:Lafa;

.field private static final f:Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lblc;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lafa$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lafa;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lafa;->d:Landroid/content/Context;

    .line 1217
    const-string/jumbo v0, "pref_key_mail_list_ads_mode"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    invoke-direct {p0}, Lafa;->c()V

    .line 1236
    :goto_0
    return-void

    .line 1226
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1227
    new-instance v0, Lafl;

    invoke-direct {v0}, Lafl;-><init>()V

    .line 1228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lafl;->a:Ljava/lang/String;

    .line 1229
    const-string/jumbo v2, "actUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lafl;->c:Ljava/lang/String;

    .line 1230
    const-string/jumbo v2, "actText"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lafl;->b:Ljava/lang/String;

    .line 1231
    const/4 v1, 0x3

    iput v1, v0, Lafl;->f:I

    .line 1232
    const/4 v1, 0x1

    iput-boolean v1, v0, Lafl;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1235
    const-string/jumbo v1, "restoreAds"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a()Lafa;
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lafa;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lafa;->e:Lafa;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lafa;

    invoke-direct {v0}, Lafa;-><init>()V

    sput-object v0, Lafa;->e:Lafa;

    .line 47
    :cond_0
    sget-object v0, Lafa;->e:Lafa;

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lafa;Lblg;)Lafl;
    .locals 3
    .param p0, "x0"    # Lafa;
    .param p1, "x1"    # Lblg;

    .prologue
    const/4 v2, 0x1

    .line 29
    .line 1334
    const/4 v0, 0x0

    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    new-instance v0, Lafl;

    invoke-direct {v0}, Lafl;-><init>()V

    .line 1337
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lafl;->a:Ljava/lang/String;

    .line 2051
    iget-object v1, p1, Lblg;->c:Ljava/lang/String;

    .line 1338
    iput-object v1, v0, Lafl;->b:Ljava/lang/String;

    .line 2059
    iget-object v1, p1, Lblg;->d:Ljava/lang/String;

    .line 1339
    iput-object v1, v0, Lafl;->c:Ljava/lang/String;

    .line 1340
    iput-boolean v2, v0, Lafl;->h:Z

    .line 1341
    iput-boolean v2, v0, Lafl;->i:Z

    .line 1342
    const/4 v1, 0x3

    iput v1, v0, Lafl;->f:I

    .line 29
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lafa;Lafl;)V
    .locals 0
    .param p0, "x0"    # Lafa;
    .param p1, "x1"    # Lafl;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lafa;->d(Lafl;)V

    return-void
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v7, "pref_key_mail_list_ads_v2"

    invoke-static {v7}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "jsonArrayString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 249
    .local v5, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lafa;->a:Ljava/util/List;

    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 251
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 252
    .local v6, "value":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 253
    new-instance v4, Lafl;

    invoke-direct {v4}, Lafl;-><init>()V

    .line 254
    .local v4, "obj":Lafl;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lafl;->a:Ljava/lang/String;

    .line 255
    const-string/jumbo v7, "actUrl"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lafl;->c:Ljava/lang/String;

    .line 256
    const-string/jumbo v7, "actText"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lafl;->b:Ljava/lang/String;

    .line 257
    const-string/jumbo v7, "actIcon"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lafl;->d:Ljava/lang/String;

    .line 258
    const-string/jumbo v7, "order"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lafl;->e:I

    .line 259
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lafl;->f:I

    .line 260
    const-string/jumbo v7, "single"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v4, Lafl;->i:Z

    .line 261
    const/4 v7, 0x1

    iput-boolean v7, v4, Lafl;->h:Z

    .line 262
    iget-object v7, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 265
    iget-object v7, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v4    # "obj":Lafl;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 269
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "size":I
    .end local v6    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "restoreAdsList"

    invoke-static {v7, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private d(Lafl;)V
    .locals 5
    .param p1, "ads"    # Lafl;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 202
    sget-object v3, Lafa;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 1277
    if-eqz p1, :cond_2

    .line 1278
    :try_start_0
    iget-object v1, p0, Lafa;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lafa;->a:Ljava/util/List;

    .line 1282
    :cond_0
    const/4 v2, 0x1

    .line 1283
    iget-boolean v1, p1, Lafl;->i:Z

    if-eqz v1, :cond_4

    .line 1284
    iget-object v1, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafl;

    .line 1285
    if-eqz v1, :cond_1

    .line 1288
    invoke-virtual {v1, p1}, Lafl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    const/4 v1, 0x0

    .line 1295
    :goto_0
    if-eqz v1, :cond_2

    .line 1296
    iget-object v1, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-virtual {p0}, Lafa;->b()V

    .line 206
    :cond_2
    iget-object v1, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafa$a;

    .line 208
    .local v0, "listener":Lafa$a;
    if-eqz v0, :cond_3

    .line 209
    iget-object v1, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lafa$a;->a(Ljava/util/List;)V

    .line 212
    .end local v0    # "listener":Lafa$a;
    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lafl;)V
    .locals 5
    .param p1, "ads"    # Lafl;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 82
    if-eqz p1, :cond_1

    .line 83
    iget-object v3, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lafl;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lafl;

    .line 86
    .local v2, "model":Lafl;
    iget-object v3, v2, Lafl;->a:Ljava/lang/String;

    iget-object v4, p1, Lafl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lafl;>;"
    .end local v2    # "model":Lafl;
    :cond_1
    iget-object v3, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafa$a;

    .line 95
    .local v1, "listener":Lafa$a;
    if-eqz v1, :cond_2

    .line 96
    iget-object v3, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Lafa$a;->a(Ljava/util/List;)V

    .line 100
    .end local v1    # "listener":Lafa$a;
    :cond_2
    iget-object v3, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 101
    const-string/jumbo v3, "pref_key_mail_list_ads_mode"

    invoke-static {v3}, Lcpk;->a(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v3, "pref_key_mail_list_ads_v2"

    invoke-static {v3}, Lcpk;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_3
    invoke-virtual {p0}, Lafa;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 304
    iget-object v4, p0, Lafa;->a:Ljava/util/List;

    if-nez v4, :cond_0

    .line 331
    :goto_0
    return-void

    .line 309
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 310
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lafl;

    .line 311
    .local v2, "model":Lafl;
    iget-boolean v5, v2, Lafl;->h:Z

    if-eqz v5, :cond_1

    .line 312
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .local v3, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "actText"

    iget-object v6, v2, Lafl;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string/jumbo v5, "actUrl"

    iget-object v6, v2, Lafl;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    iget-object v5, v2, Lafl;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 316
    const-string/jumbo v5, "actIcon"

    iget-object v6, v2, Lafl;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    :cond_2
    const-string/jumbo v5, "order"

    iget v6, v2, Lafl;->e:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string/jumbo v5, "type"

    iget v6, v2, Lafl;->f:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string/jumbo v5, "single"

    iget-boolean v6, v2, Lafl;->i:Z

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 321
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 327
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "model":Lafl;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "saveToLocal"

    invoke-static {v4, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "pref_key_mail_list_ads_v2"

    .line 326
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-static {v4, v5}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final b(Lafl;)V
    .locals 6
    .param p1, "data"    # Lafl;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    iget-object v5, p0, Lafa;->a:Ljava/util/List;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v5, p1, Lafl;->a:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "found":Z
    iget-object v5, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 121
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 122
    iget-object v5, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lafl;

    .line 123
    .local v4, "model":Lafl;
    if-nez v4, :cond_3

    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v4, p1}, Lafl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    iget-object v5, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v5, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    .line 133
    .end local v4    # "model":Lafl;
    :cond_4
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lafa;->b()V

    .line 136
    iget-object v5, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lafa;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lafa$a;

    .line 138
    .local v3, "listener":Lafa$a;
    if-eqz v3, :cond_0

    .line 139
    iget-object v5, p0, Lafa;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Lafa$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final c(Lafl;)V
    .locals 1
    .param p1, "ads"    # Lafl;

    .prologue
    .line 165
    iget-object v0, p1, Lafl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lafl;->a:Ljava/lang/String;

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lafa;->d(Lafl;)V

    .line 170
    return-void
.end method
