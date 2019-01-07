.class public Lmtopsdk/common/util/GlobalPropertyMgr;
.super Ljava/lang/Object;
.source "GlobalPropertyMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.GlobalPropertyMgr"

.field private static globalProp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lmtopsdk/common/util/GlobalPropertyMgr;

.field private static isInitSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmtopsdk/common/util/GlobalPropertyMgr;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v9, Lmtopsdk/common/util/GlobalPropertyMgr;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    if-nez v8, :cond_0

    .line 25
    new-instance v8, Lmtopsdk/common/util/GlobalPropertyMgr;

    invoke-direct {v8}, Lmtopsdk/common/util/GlobalPropertyMgr;-><init>()V

    sput-object v8, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    .line 27
    :cond_0
    sget-boolean v8, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    if-nez v8, :cond_1

    .line 28
    if-nez p0, :cond_2

    .line 29
    const-string/jumbo v8, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v10, "miss context argument,load property file failed"

    invoke-static {v8, v10}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    sget-object v8, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v8

    .line 32
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 34
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_2
    const-string/jumbo v8, "mtopsdk.property"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 35
    .local v3, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 36
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v6}, Ljava/util/Properties;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 38
    invoke-virtual {v6}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 39
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 41
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 43
    .local v5, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 44
    .local v7, "value":Ljava/lang/Object;
    sget-object v8, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 45
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "mtopsdk.GlobalPropertyMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[loadPropertiesIgnoreCase] load  property error"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v6    # "properties":Ljava/util/Properties;
    :catch_1
    move-exception v8

    :try_start_5
    const-string/jumbo v8, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v10, "read mtopsdk.property failed!"

    invoke-static {v8, v10}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    const/4 v8, 0x1

    :try_start_6
    sput-boolean v8, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 24
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 51
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "properties":Ljava/util/Properties;
    :cond_3
    :try_start_7
    const-string/jumbo v8, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v10, "load property file succeed"

    invoke-static {v8, v10}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 55
    const/4 v8, 0x1

    :try_start_8
    sput-boolean v8, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    goto/16 :goto_0

    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "properties":Ljava/util/Properties;
    :catchall_1
    move-exception v8

    const/4 v10, 0x1

    sput-boolean v10, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public getProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    return-object v0
.end method
