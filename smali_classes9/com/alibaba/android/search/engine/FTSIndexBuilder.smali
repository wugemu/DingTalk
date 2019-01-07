.class public final Lcom/alibaba/android/search/engine/FTSIndexBuilder;
.super Ljava/lang/Object;
.source "FTSIndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/alibaba/bee/DBStatusListener;

.field private static j:Lcom/alibaba/bee/DataManipulationListener;

.field private static k:Lcom/alibaba/bee/DBTableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v0

    sput v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    .line 52
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v0

    sput v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b:I

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$1;

    invoke-direct {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$1;-><init>()V

    invoke-static {v0}, Leui;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    .line 7851
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 7852
    if-nez v0, :cond_0

    .line 7853
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7856
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    sput-boolean v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    .line 161
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Leue;->a(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "result":I
    const-string/jumbo v1, "notifyDbClose returns %d,dbName=%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Leue;->a(Ljava/lang/String;)I

    move-result v0

    .line 168
    const-string/jumbo v1, "notifyDbClose returns %d,dbName=%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_1
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    const-string/jumbo v2, "0.db"

    invoke-virtual {v1, v2}, Leue;->a(Ljava/lang/String;)I

    move-result v0

    .line 172
    const-string/jumbo v1, "notifyDbClose returns %d,dbName=%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "0.db"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->i:Lcom/alibaba/bee/DBStatusListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/bee/DBManager;->unregisterStatusListener(Lcom/alibaba/bee/DBStatusListener;)V

    .line 175
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j:Lcom/alibaba/bee/DataManipulationListener;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/bee/DBManager;->unregisterDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V

    .line 176
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k:Lcom/alibaba/bee/DBTableListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/bee/DBManager;->unregisterTableListener(Lcom/alibaba/bee/DBTableListener;)V

    .line 178
    invoke-static {}, Lens;->b()V

    .line 179
    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-object v0

    .line 823
    :cond_1
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "index_for_dt_"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 827
    :cond_2
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "index_for_wk_"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_3
    const-string/jumbo v1, "0.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "index_for_func_"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    return v0
.end method

.method static synthetic d(Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 860
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tb_org_employee_closest"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 840
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 841
    .local v0, "dbConfigTables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "dbConfigTables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 843
    .restart local v0    # "dbConfigTables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    return-void
.end method

.method private static e(Ljava/lang/String;)J
    .locals 13
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 777
    .line 1801
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1805
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1806
    if-eqz v1, :cond_1

    .line 1807
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "dbPath":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v2, v10

    .line 793
    :cond_0
    :goto_1
    return-wide v2

    .line 1810
    .end local v4    # "dbPath":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 781
    .restart local v4    # "dbPath":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBManager;->getSqliteHandler(Ljava/lang/String;)J

    move-result-wide v6

    .line 1814
    .local v6, "hookConn":J
    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3

    move v1, v8

    .line 782
    :goto_2
    if-eqz v1, :cond_0

    .line 786
    invoke-static {}, Leue;->a()Leue;

    move-result-object v2

    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->f:Ljava/lang/String;

    .line 2071
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2072
    const/4 v0, -0x1

    .line 787
    .local v0, "result":I
    :goto_3
    const-string/jumbo v1, "notifyDbReady returns %d,dbName=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object p0, v2, v8

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    if-eqz v0, :cond_5

    .line 789
    sput-boolean v9, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    .line 790
    const-wide/16 v2, -0x2

    goto :goto_1

    .end local v0    # "result":I
    :cond_3
    move v1, v9

    .line 1814
    goto :goto_2

    .line 2075
    :cond_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v12

    new-instance v1, Leue$1;

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Leue$1;-><init>(Leue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v12, p0, v1}, Lcom/alibaba/bee/DBManager;->executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I

    move-result v0

    goto :goto_3

    .restart local v0    # "result":I
    :cond_5
    move-wide v2, v10

    .line 793
    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 864
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tb_local_contact"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tb_user_intimacy"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 872
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tbuser"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 876
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tbdingcontent"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 880
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v1, "tbdinglist"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 884
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const-string/jumbo v1, "tbconversation"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const-string/jumbo v1, "tbuser"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 892
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const-string/jumbo v1, "tbmsg"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 896
    const-string/jumbo v0, "0.db"

    const-string/jumbo v1, "tbfunction"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c:Z

    return v0
.end method

.method static synthetic q()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2557
    new-instance v0, Lcom/alibaba/android/searchengine/models/Configure;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/Configure;-><init>()V

    .line 2558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    .line 2559
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    .line 2571
    new-instance v2, Lcom/alibaba/android/searchengine/models/DBConfigure;

    invoke-direct {v2}, Lcom/alibaba/android/searchengine/models/DBConfigure;-><init>()V

    .line 2572
    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->dbName:Ljava/lang/String;

    .line 2573
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2574
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2616
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2617
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2618
    const-string/jumbo v5, "tb_user_intimacy"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2619
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2620
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2621
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "nick"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2622
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "empName"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tb_user_intimacy"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2631
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2632
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->g()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2633
    const-string/jumbo v5, "tbuser"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2634
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2635
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2636
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "nick"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2637
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "alias"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "orgEmail"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2639
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "authOrgName"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2641
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tbuser"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2576
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2648
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2649
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2650
    const-string/jumbo v5, "tb_local_contact"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2651
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2652
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2653
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "name"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2654
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "phonenumber"

    const-string/jumbo v8, "number"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tb_local_contact"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2663
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2664
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->h()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2665
    const-string/jumbo v5, "tbdingcontent"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2666
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2667
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2668
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "content"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tbdingcontent"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2578
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2677
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2678
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->i()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2679
    const-string/jumbo v5, "tbdinglist"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2680
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2681
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2682
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "dingAttachments"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tbdinglist"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2579
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 2690
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 2691
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 2692
    const-string/jumbo v5, "tb_org_employee_closest"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 2693
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 2694
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 2695
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "oid"

    const-string/jumbo v8, "none"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2696
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "nick"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2697
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "emp_name"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2699
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const-string/jumbo v6, "tb_org_employee_closest"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2559
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2560
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    .line 3586
    new-instance v2, Lcom/alibaba/android/searchengine/models/DBConfigure;

    invoke-direct {v2}, Lcom/alibaba/android/searchengine/models/DBConfigure;-><init>()V

    .line 3587
    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->dbName:Ljava/lang/String;

    .line 3596
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 3597
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 3704
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 3705
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 3706
    const-string/jumbo v5, "tbuser"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 3707
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 3708
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 3709
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "alias"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3711
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const-string/jumbo v6, "tbuser"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3598
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 3718
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 3719
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 3720
    const-string/jumbo v5, "tbconversation"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 3721
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 3722
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 3723
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "title"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3725
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const-string/jumbo v6, "tbconversation"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3599
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 3732
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 3733
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 3734
    const-string/jumbo v5, "tbmsg_"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->shardingTablePrefix:Ljava/lang/String;

    .line 3735
    const/4 v5, 0x2

    iput v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 3736
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 3737
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "content"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3738
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "senderId"

    const-string/jumbo v8, "none"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3739
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "cid"

    const-string/jumbo v8, "none"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3747
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "createdAt"

    const-string/jumbo v8, "none"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3599
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2560
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2561
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/Configure;->dbConfs:Ljava/util/List;

    .line 4606
    new-instance v2, Lcom/alibaba/android/searchengine/models/DBConfigure;

    invoke-direct {v2}, Lcom/alibaba/android/searchengine/models/DBConfigure;-><init>()V

    .line 4607
    const-string/jumbo v3, "0.db"

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->dbName:Ljava/lang/String;

    .line 4608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 4609
    iget-object v3, v2, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    .line 4755
    new-instance v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/ConfigureTable;-><init>()V

    .line 4896
    const-string/jumbo v5, "0.db"

    const-string/jumbo v6, "tbfunction"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4756
    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    .line 4757
    const-string/jumbo v5, "tbfunction"

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    .line 4758
    iput v9, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    .line 4759
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    .line 4760
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "name"

    const-string/jumbo v8, "name"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4761
    iget-object v5, v4, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    const-string/jumbo v7, "desc"

    const-string/jumbo v8, "text"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/searchengine/models/ConfigureColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4763
    const-string/jumbo v5, "0.db"

    const-string/jumbo v6, "tbfunction"

    invoke-static {v5, v6}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2561
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2565
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    .line 5066
    iget-object v1, v1, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    invoke-static {v0}, Lcom/alibaba/android/searchengine/models/FtsConfigure;->fromConfigure(Lcom/alibaba/android/searchengine/models/Configure;)Lcom/alibaba/android/searchengine/models/FtsConfigure;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/searchengine/jni/Searcher;->configure(Lcom/alibaba/android/searchengine/models/FtsConfigure;)I

    move-result v0

    .line 2566
    const-string/jumbo v1, "configure returns %d"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method static synthetic r()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5190
    :try_start_0
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5191
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/bee/DBManager;->enableTrigger(Ljava/lang/String;Z)V

    .line 5194
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5195
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/bee/DBManager;->enableTrigger(Ljava/lang/String;Z)V

    .line 5198
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-string/jumbo v1, "0.db"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/bee/DBManager;->enableTrigger(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5201
    :goto_0
    return-void

    .line 5199
    :catch_0
    move-exception v0

    .line 5200
    const-string/jumbo v1, "enableTrigger failed: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic s()V
    .locals 2

    .prologue
    .line 5209
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;

    invoke-direct {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->i:Lcom/alibaba/bee/DBStatusListener;

    .line 5242
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->i:Lcom/alibaba/bee/DBStatusListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->registerStatusListener(Lcom/alibaba/bee/DBStatusListener;)V

    .line 48
    return-void
.end method

.method static synthetic t()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 5538
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5541
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    .line 5543
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5546
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    .line 5548
    :cond_1
    const-string/jumbo v0, "0.db"

    invoke-static {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 5551
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-string/jumbo v1, "0.db"

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    :cond_2
    return-void
.end method

.method static synthetic u()V
    .locals 3

    .prologue
    .line 6249
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;

    invoke-direct {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j:Lcom/alibaba/bee/DataManipulationListener;

    .line 6292
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->j:Lcom/alibaba/bee/DataManipulationListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/bee/DBManager;->registerDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V

    .line 6295
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;

    invoke-direct {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k:Lcom/alibaba/bee/DBTableListener;

    .line 6332
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->k:Lcom/alibaba/bee/DBTableListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->registerTableListener(Lcom/alibaba/bee/DBTableListener;)V

    .line 48
    return-void
.end method

.method static synthetic v()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 6346
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6352
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name IN (\'"

    .line 6353
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tb_user_intimacy"

    .line 6354
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6355
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbuser"

    .line 6356
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6357
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tb_local_contact"

    .line 6358
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6359
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbdingcontent"

    .line 6360
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6361
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbdinglist"

    .line 6362
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6363
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tb_org_employee_closest"

    .line 6364
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    .line 6365
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 6367
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 6368
    if-eqz v1, :cond_6

    .line 6369
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6370
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6374
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Leue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6375
    const-string/jumbo v4, "notifyTableReady returns %d,dbName=%s,tableName=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    sget-object v6, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6377
    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6378
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    sget v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    invoke-virtual {v3, v4, v0, v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 6379
    const-string/jumbo v4, "fullSyncIndex returns %d,bizType=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 6382
    :catch_0
    move-exception v0

    .line 6383
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 6385
    if-eqz v1, :cond_1

    .line 6386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6466
    :cond_1
    :goto_2
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6472
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name IN (\'"

    .line 6473
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbuser"

    .line 6474
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'"

    .line 6475
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbconversation"

    .line 6476
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    .line 6477
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 6479
    :try_start_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 6480
    if-eqz v1, :cond_8

    .line 6481
    :cond_2
    :goto_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6482
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6486
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Leue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6487
    const-string/jumbo v4, "notifyTableReady returns %d,dbName=%s,tableName=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    sget-object v6, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6489
    sget-object v3, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6490
    invoke-static {}, Leue;->a()Leue;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    sget v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    invoke-virtual {v3, v4, v0, v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 6491
    const-string/jumbo v4, "fullSyncIndex returns %d,bizType=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 6494
    :catch_1
    move-exception v0

    .line 6495
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 6497
    if-eqz v1, :cond_3

    .line 6498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6507
    :cond_3
    :goto_5
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    .line 6508
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tbfunction"

    .line 6509
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    .line 6510
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 6512
    :try_start_6
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    const-string/jumbo v3, "0.db"

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6513
    if-eqz v2, :cond_a

    .line 6514
    :cond_4
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6515
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6519
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    const-string/jumbo v3, "0.db"

    invoke-virtual {v1, v3, v0}, Leue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6520
    const-string/jumbo v3, "notifyTableReady returns %d,dbName=%s,tableName=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string/jumbo v5, "0.db"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6522
    const-string/jumbo v1, "0.db"

    invoke-static {v1, v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6523
    invoke-static {}, Leue;->a()Leue;

    move-result-object v1

    const-string/jumbo v3, "0.db"

    sget v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    invoke-virtual {v1, v3, v0, v4}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 6524
    const-string/jumbo v3, "fullSyncIndex returns %d,bizType=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 6527
    :catch_2
    move-exception v0

    .line 6528
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6530
    if-eqz v2, :cond_5

    .line 6531
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_7
    return-void

    .line 6385
    :cond_6
    if-eqz v1, :cond_1

    .line 6386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 6385
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_7

    .line 6386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 6497
    :cond_8
    if-eqz v1, :cond_3

    .line 6498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 6497
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_9

    .line 6498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 6530
    :cond_a
    if-eqz v2, :cond_5

    .line 6531
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 6530
    :catchall_2
    move-exception v0

    if-eqz v2, :cond_b

    .line 6531
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    .line 6497
    :catchall_3
    move-exception v0

    goto :goto_9

    .line 6494
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    .line 6385
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 6382
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 7394
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v0, v2, :cond_3

    .line 7398
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7404
    const-string/jumbo v0, "SELECT count(*) as count FROM index_for_wk_tbconversation_fts"

    .line 7405
    const-string/jumbo v2, "SELECT count(*) as count FROM tbconversation"

    .line 7407
    const-string/jumbo v3, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name LIKE \'%tbconversation%\'"

    .line 7409
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 7411
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7412
    if-eqz v1, :cond_4

    .line 7413
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7414
    const-string/jumbo v0, "count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 7415
    const-string/jumbo v5, "index_for_wk_tbconversation_fts count="

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v5, "; "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7418
    :catch_0
    move-exception v0

    .line 7419
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7421
    if-eqz v1, :cond_0

    .line 7422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7427
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v2, v7}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7428
    if-eqz v1, :cond_6

    .line 7429
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7430
    const-string/jumbo v0, "count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 7431
    const-string/jumbo v2, "tbconversation count="

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; "

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 7434
    :catch_1
    move-exception v0

    .line 7435
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7437
    if-eqz v1, :cond_1

    .line 7438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7443
    :cond_1
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v5, v3, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7444
    if-eqz v1, :cond_9

    .line 7445
    const-string/jumbo v0, "wukong db table="

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7446
    :cond_2
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7447
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7448
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7451
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 7455
    :catch_2
    move-exception v0

    .line 7456
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 7458
    if-eqz v1, :cond_3

    .line 7459
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_5
    return-void

    .line 7421
    :cond_4
    if-eqz v1, :cond_0

    .line 7422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 7421
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 7422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 7437
    :cond_6
    if-eqz v1, :cond_1

    .line 7438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 7437
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    .line 7438
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 7453
    :cond_8
    :try_start_6
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 7458
    :cond_9
    if-eqz v1, :cond_3

    .line 7459
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 7458
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_a

    .line 7459
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method static synthetic y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z()Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->h:Ljava/util/List;

    return-object v0
.end method
