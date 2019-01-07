.class public final Lent;
.super Ljava/lang/Object;
.source "IndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lent$c;,
        Lent$e;,
        Lent$f;,
        Lent$b;,
        Lent$a;,
        Lent$d;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lent;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a()V

    .line 35
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b()V

    .line 42
    return-void
.end method

.method public static c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string/jumbo v0, "startSearchEngine(),useFTSSearchEngine=true,vs=6"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-string/jumbo v0, "6"

    sput-object v0, Letb;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a()V

    .line 1211
    const-string/jumbo v0, "pref_key_clear_old_index_flag"

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    const-string/jumbo v0, "pref_key_clear_old_index_flag"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1216
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1217
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "search"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1219
    const-string/jumbo v0, "old index not exist"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    invoke-static {}, Lent;->e()V

    .line 60
    return-void

    .line 1223
    :cond_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    const-string/jumbo v0, "delete old index failed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_search_engine_last_use_fts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v0

    sput v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a:I

    .line 107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_search_engine_last_use_fts"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    :cond_0
    return-void
.end method

.method private static e()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2064
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    .line 2065
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->w()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2066
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->x()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2067
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    .line 73
    :goto_0
    if-nez v2, :cond_3

    .line 94
    .local v0, "featureOpenStateList":Ljava/util/List;, "Ljava/util/List<Lent$d;>;"
    :cond_1
    return-void

    .end local v0    # "featureOpenStateList":Ljava/util/List;, "Ljava/util/List<Lent$d;>;"
    :cond_2
    move v2, v3

    .line 2069
    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, 0x5

    invoke-static {v2}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    .restart local v0    # "featureOpenStateList":Ljava/util/List;, "Ljava/util/List<Lent$d;>;"
    new-instance v2, Lent$a;

    invoke-direct {v2, v3}, Lent$a;-><init>(B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lent$b;

    invoke-direct {v2, v3}, Lent$b;-><init>(B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lent$f;

    invoke-direct {v2, v3}, Lent$f;-><init>(B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lent$e;

    invoke-direct {v2, v3}, Lent$e;-><init>(B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v2, Lent$c;

    invoke-direct {v2, v3}, Lent$c;-><init>(B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lent$d;

    .line 85
    .local v1, "state":Lent$d;
    invoke-virtual {v1}, Lent$d;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->ForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v5

    sput v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b:I

    .line 89
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, " state changed, force syn now!"

    aput-object v6, v5, v4

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v7, "search"

    invoke-static {v7, v5, v6}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1}, Lent$d;->b()V

    goto :goto_1
.end method
