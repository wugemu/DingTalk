.class public final Ljir;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljir$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static c:Z

.field private static d:Ljava/io/File;

.field private static e:Ljava/io/File;

.field private static f:J

.field private static final g:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Ljir;->a:Ljava/lang/String;

    .line 44
    sput-object v0, Ljir;->d:Ljava/io/File;

    .line 46
    sput-object v0, Ljir;->e:Ljava/io/File;

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Ljir;->f:J

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljir;->g:Ljava/util/Random;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.taobao.accs.intent.action."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ELECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljir;->b:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Ljir;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 38
    sput-object p0, Ljir;->d:Ljava/io/File;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "packMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 398
    :cond_0
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "localElection failed, packMap null"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    const/4 v3, 0x0

    .line 430
    :goto_0
    return-object v3

    .line 402
    :cond_1
    const-wide/16 v6, -0x1

    .line 403
    .local v6, "maxPriority":J
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 406
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v4, "maxPacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 410
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 411
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 412
    .local v5, "pack":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v8, v12

    .line 413
    .local v8, "priority":J
    cmp-long v12, v8, v6

    if-lez v12, :cond_3

    .line 414
    move-wide v6, v8

    .line 415
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 417
    :cond_3
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 418
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "pack":Ljava/lang/String;
    .end local v8    # "priority":J
    :cond_4
    sget-object v12, Ljir;->g:Ljava/util/Random;

    const/16 v13, 0x2710

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 422
    .local v10, "rand":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    rem-int v1, v10, v12

    .line 423
    .local v1, "index":I
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 424
    .local v11, "sudoPack":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 425
    move-object v3, v11

    .local v3, "localResult":Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v3    # "localResult":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 428
    .restart local v3    # "localResult":Ljava/lang/String;
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "localElection localResult null, user curr app"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "pkg"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a([B)Ljava/util/Map;
    .locals 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 298
    .local v1, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 299
    .local v7, "json":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "blacklist"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 301
    .local v8, "jsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 302
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local v2, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 304
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 305
    .local v6, "jobj":Lorg/json/JSONObject;
    const-string/jumbo v13, "sdkvs"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 306
    .local v5, "jarray":Lorg/json/JSONArray;
    const-string/jumbo v13, "pkg"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 308
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 309
    .local v12, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 310
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 312
    :cond_1
    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .end local v4    # "j":I
    .end local v12    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "jarray":Lorg/json/JSONArray;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .end local v10    # "key":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 316
    .end local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v3    # "i":I
    .restart local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_4
    :try_start_2
    const-string/jumbo v14, "ElectionServiceUtil"

    const-string/jumbo v15, "praseBlackList"

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    const-string/jumbo v17, "blacklist"

    aput-object v17, v16, v13

    const/16 v17, 0x1

    if-nez v1, :cond_5

    const-string/jumbo v13, "null"

    :goto_3
    aput-object v13, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 317
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 318
    .local v11, "t":Ljava/lang/Throwable;
    :goto_4
    const-string/jumbo v13, "ElectionServiceUtil"

    const-string/jumbo v14, "praseBlackList"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v11, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 316
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    goto :goto_3

    .line 317
    .end local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v3    # "i":I
    :catch_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    goto :goto_4
.end method

.method public static final a(Landroid/content/Context;)Ljir$a;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {}, Ljir;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Ljir$a;

    invoke-direct {v0}, Ljir$a;-><init>()V

    .line 165
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v1

    .line 1215
    iget-object v0, v1, Ljim;->h:Ljir$a;

    .line 160
    .local v0, "result":Ljir$a;
    if-eqz v0, :cond_1

    .line 161
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "getElectionResult from mem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Ljir$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "retry"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Ljir$a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p0}, Ljir;->b(Landroid/content/Context;)Ljir$a;

    move-result-object v0

    .line 165
    goto :goto_0
.end method

.method public static a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljir;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Ljir;->d:Ljava/io/File;

    .line 76
    const-string/jumbo v1, "ElectionServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljir;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljir;->d:Ljava/io/File;

    const-string/jumbo v3, "accs_election"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    sput-object v1, Ljir;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljir;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "ElectionServiceUtil"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljir$a;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljir$a;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    .line 1210
    iput-object p1, v0, Ljim;->h:Ljir$a;

    .line 98
    new-instance v0, Ljir$1;

    invoke-direct {v0, p0, p1}, Ljir$1;-><init>(Landroid/content/Context;Ljir$a;)V

    invoke-static {v0}, Ljin;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;[B)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    if-eqz p1, :cond_0

    sget-object v1, Ljir;->d:Ljava/io/File;

    if-nez v1, :cond_1

    .line 224
    :cond_0
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList null"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "data"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string/jumbo v4, "path"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    sget-object v5, Ljir;->d:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljir;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/accs_blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "filepath":Ljava/lang/String;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "path"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v1

    invoke-static {p1}, Ljir;->a([B)Ljava/util/Map;

    move-result-object v2

    .line 3200
    iput-object v2, v1, Ljim;->g:Ljava/util/Map;

    .line 230
    new-instance v1, Ljir$2;

    invoke-direct {v1, p0, p1, v0}, Ljir$2;-><init>(Landroid/content/Context;[BLjava/lang/String;)V

    invoke-static {v1}, Ljin;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "electionVersion"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 333
    const/4 v4, 0x1

    .line 334
    .local v4, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    :goto_0
    return v6

    .line 340
    :cond_0
    if-eq p2, v8, :cond_2

    .line 341
    :try_start_0
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp election version not match"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "require"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "self ver"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 382
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v2, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    move v6, v4

    .line 384
    goto :goto_0

    .line 346
    :cond_2
    :try_start_1
    invoke-static {p0}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljil;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 347
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp is unbinded"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 351
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 354
    .local v1, "clientApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_4

    .line 355
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp applicaton info null"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 359
    :cond_4
    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_5

    .line 360
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp is disabled"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    :cond_5
    invoke-static {p0}, Ljir;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 366
    .local v0, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_1

    .line 367
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "blackList"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 369
    .local v5, "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_7

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 370
    :cond_6
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp in blacklist"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sdkv"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0xd5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 373
    :cond_7
    const-string/jumbo v7, "*"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    check-cast v5, Ljava/util/Set;

    .line 374
    .restart local v5    # "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 375
    :cond_8
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp in blacklist *"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sdkv"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0xd5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 38
    sput-object p0, Ljir;->e:Ljava/io/File;

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Ljir$a;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    new-instance v10, Ljir$a;

    invoke-direct {v10}, Ljir$a;-><init>()V

    .line 180
    .local v10, "result":Ljir$a;
    const/4 v5, 0x0

    .line 182
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v12, Ljir;->d:Ljava/io/File;

    if-nez v12, :cond_0

    .line 183
    invoke-static {}, Ljir;->a()V

    .line 185
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v12, Ljir;->a:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 187
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 189
    .local v8, "length":I
    new-array v2, v8, [B

    .line 190
    .local v2, "buffer":[B
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 191
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v7, v2, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 192
    .local v7, "json":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v11, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v12, "package"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 196
    iput-object v9, v10, Ljir$a;->a:Ljava/lang/String;

    .line 197
    const-string/jumbo v12, "lastFlushTime"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Ljir;->f:J

    .line 199
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Ljir;->f:J

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 200
    const-string/jumbo v12, "retry"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Ljir$a;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 206
    .end local v2    # "buffer":[B
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "length":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "resultJson":Lorg/json/JSONObject;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    :try_start_2
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "getElectionResult"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "host"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v10, Ljir$a;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "retry"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v10, Ljir$a;->b:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-static/range {p0 .. p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v12

    .line 2210
    iput-object v10, v12, Ljim;->h:Ljir$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v5, :cond_3

    .line 213
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    return-object v10

    .line 202
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v8    # "length":I
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v11    # "resultJson":Lorg/json/JSONObject;
    :cond_4
    const-wide/16 v12, 0x0

    :try_start_4
    sput-wide v12, Ljir;->f:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 214
    .end local v2    # "buffer":[B
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "length":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "readFile is error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v3, v14}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    if-eqz v5, :cond_3

    .line 213
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 214
    :catch_2
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v5, :cond_5

    .line 213
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 216
    :cond_5
    :goto_4
    throw v12

    .line 214
    :catch_3
    move-exception v3

    .line 215
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 211
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 208
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    sget-boolean v1, Ljir;->c:Z

    if-eqz v1, :cond_0

    .line 171
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "try Election Fail, disable election!!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljjn;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 475
    const-string/jumbo v0, "com.taobao.accs.intent.action.ELECTION"

    .line 477
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljir;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 249
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v2

    const/4 v3, 0x0

    .line 4200
    iput-object v3, v2, Ljim;->g:Ljava/util/Map;

    .line 251
    sget-object v2, Ljir;->d:Ljava/io/File;

    if-nez v2, :cond_1

    .line 252
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList path null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljir;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "accs_blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 483
    const-string/jumbo v0, "/accs/accs_main/1"

    .line 485
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/accs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 440
    const/4 v4, 0x0

    .line 442
    .local v4, "pack":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 443
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v2, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 445
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_0

    .line 446
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService resolveInfo null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v7

    .line 449
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 450
    .local v3, "mServiceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 451
    :cond_1
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService serviceinfo null or disabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mServiceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "getResolveService error"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v1, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    move-object v7, v4

    .line 466
    goto :goto_0

    .line 454
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    :try_start_1
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 456
    .local v0, "clientPack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 457
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService clientPack null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_3
    move-object v4, v0

    .line 462
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "getResolveService"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic e()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ljir;->d:Ljava/io/File;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 268
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    .line 4205
    iget-object v0, v3, Ljim;->g:Ljava/util/Map;

    .line 270
    .local v0, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList from mem"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    .line 289
    :goto_0
    return-object v3

    .line 275
    :cond_0
    sget-object v3, Ljir;->d:Ljava/io/File;

    if-nez v3, :cond_1

    .line 276
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList path null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    const/4 v3, 0x0

    goto :goto_0

    .line 281
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljir;->d:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "accs_blacklist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljji;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 282
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 283
    invoke-static {v1}, Ljir;->a([B)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    .end local v1    # "data":[B
    :cond_2
    :goto_1
    invoke-static {p0}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    .line 5200
    iput-object v0, v3, Ljim;->g:Ljava/util/Map;

    move-object v3, v0

    .line 289
    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic f()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ljir;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 38
    sget-wide v0, Ljir;->f:J

    return-wide v0
.end method
