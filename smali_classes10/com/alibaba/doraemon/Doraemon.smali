.class public Lcom/alibaba/doraemon/Doraemon;
.super Ljava/lang/Object;
.source "Doraemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/Doraemon$MetaData;
    }
.end annotation


# static fields
.field public static MODE_DEBUG:I = 0x0

.field public static MODE_GRAY:I = 0x0

.field public static MODE_RELEASE:I = 0x0

.field public static final build_version:Ljava/lang/String; = "1.9.3"

.field private static mUserAgentFetcher:Lcom/alibaba/doraemon/UserAgentFetcher; = null

.field private static final sArtifacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/ArtifactFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public static sContext:Landroid/content/Context; = null

.field private static sIsMainProcess:Z = false

.field private static sMetaDataMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/Doraemon$MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static sMode:I = 0x0

.field public static final version:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    sput v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 24
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    .line 26
    const/4 v0, 0x4

    sput v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/Doraemon;->sArtifacts:Ljava/util/Map;

    .line 34
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    sput v0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    .line 36
    sput-boolean v1, Lcom/alibaba/doraemon/Doraemon;->sIsMainProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method private static checkIsMainProcess()Z
    .locals 7

    .prologue
    .line 241
    const-string/jumbo v4, ""

    .line 242
    .local v4, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 243
    .local v3, "pid":I
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 244
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 245
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_0

    .line 246
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 251
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static declared-synchronized getArtifact(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "artifactName"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v2, Lcom/alibaba/doraemon/Doraemon;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "please call Doraemon init method first"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 123
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sArtifacts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/ArtifactFetcher;

    .line 124
    .local v0, "fetcher":Lcom/alibaba/doraemon/ArtifactFetcher;
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Lcom/alibaba/doraemon/ArtifactFetcher;->getArtifact()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 135
    :goto_0
    monitor-exit v2

    return-object v1

    .line 128
    :cond_1
    :try_start_2
    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 129
    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/Doraemon$MetaData;

    sget-object v3, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/alibaba/doraemon/Doraemon;->initComponent(Lcom/alibaba/doraemon/Doraemon$MetaData;Ljava/util/Map;)V

    .line 131
    :cond_2
    sget-object v1, Lcom/alibaba/doraemon/Doraemon;->sArtifacts:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fetcher":Lcom/alibaba/doraemon/ArtifactFetcher;
    check-cast v0, Lcom/alibaba/doraemon/ArtifactFetcher;

    .line 132
    .restart local v0    # "fetcher":Lcom/alibaba/doraemon/ArtifactFetcher;
    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0}, Lcom/alibaba/doraemon/ArtifactFetcher;->getArtifact()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    sget v0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRunningMode()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    return v0
.end method

.method public static getUserAgentFetcher()Lcom/alibaba/doraemon/UserAgentFetcher;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/alibaba/doraemon/Doraemon;->mUserAgentFetcher:Lcom/alibaba/doraemon/UserAgentFetcher;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-class v8, Lcom/alibaba/doraemon/Doraemon;

    monitor-enter v8

    if-nez p0, :cond_0

    .line 147
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "use null to init doraemon"

    invoke-direct {v7, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 149
    :cond_0
    :try_start_1
    sget-object v7, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    .line 190
    :goto_0
    monitor-exit v8

    return-void

    .line 152
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    sget-object v7, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sget-object v9, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x480

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 159
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 160
    .local v6, "metaNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    const/16 v9, 0x1e

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    .line 161
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 162
    .local v5, "metaName":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "items":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v4, v9

    const-string/jumbo v10, "com.alibaba.doraemon"

    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    sget-object v9, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/Doraemon$MetaData;

    .line 167
    .local v1, "data":Lcom/alibaba/doraemon/Doraemon$MetaData;
    if-nez v1, :cond_2

    .line 168
    new-instance v1, Lcom/alibaba/doraemon/Doraemon$MetaData;

    .end local v1    # "data":Lcom/alibaba/doraemon/Doraemon$MetaData;
    invoke-direct {v1}, Lcom/alibaba/doraemon/Doraemon$MetaData;-><init>()V

    .line 169
    .restart local v1    # "data":Lcom/alibaba/doraemon/Doraemon$MetaData;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iput-object v9, v1, Lcom/alibaba/doraemon/Doraemon$MetaData;->mName:Ljava/lang/String;

    .line 170
    const/4 v9, 0x1

    aget-object v9, v4, v9

    iput-object v9, v1, Lcom/alibaba/doraemon/Doraemon$MetaData;->mFetcher:Ljava/lang/String;

    .line 171
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "dependency":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 173
    const-string/jumbo v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/alibaba/doraemon/Doraemon$MetaData;->mDependencys:[Ljava/lang/String;

    .line 174
    :cond_3
    sget-object v9, Lcom/alibaba/doraemon/Doraemon;->sMetaDataMap:Ljava/util/Map;

    iget-object v10, v1, Lcom/alibaba/doraemon/Doraemon$MetaData;->mName:Ljava/lang/String;

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 180
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "data":Lcom/alibaba/doraemon/Doraemon$MetaData;
    .end local v2    # "dependency":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "metaName":Ljava/lang/String;
    .end local v6    # "metaNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 184
    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v9

    if-eq v7, v9, :cond_4

    .line 185
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 189
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->checkIsMainProcess()Z

    move-result v7

    sput-boolean v7, Lcom/alibaba/doraemon/Doraemon;->sIsMainProcess:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private static initComponent(Lcom/alibaba/doraemon/Doraemon$MetaData;Ljava/util/Map;)V
    .locals 9
    .param p0, "component"    # Lcom/alibaba/doraemon/Doraemon$MetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/Doraemon$MetaData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/Doraemon$MetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "allComponent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/Doraemon$MetaData;>;"
    iget-boolean v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mIsReg:Z

    if-eqz v5, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mDependencys:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mDependencys:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 200
    iget-object v6, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mDependencys:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    .line 201
    .local v1, "dependency":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/Doraemon$MetaData;

    .line 202
    .local v2, "dependencyMeta":Lcom/alibaba/doraemon/Doraemon$MetaData;
    if-nez v2, :cond_2

    .line 203
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can\'t found "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'s dependency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "dependency":Ljava/lang/String;
    .end local v2    # "dependencyMeta":Lcom/alibaba/doraemon/Doraemon$MetaData;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 222
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 205
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "dependency":Ljava/lang/String;
    .restart local v2    # "dependencyMeta":Lcom/alibaba/doraemon/Doraemon$MetaData;
    :cond_2
    :try_start_1
    iget-boolean v8, v2, Lcom/alibaba/doraemon/Doraemon$MetaData;->mIsReg:Z

    if-nez v8, :cond_3

    .line 206
    invoke-static {v2, p1}, Lcom/alibaba/doraemon/Doraemon;->initComponent(Lcom/alibaba/doraemon/Doraemon$MetaData;Ljava/util/Map;)V

    .line 200
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 211
    .end local v1    # "dependency":Ljava/lang/String;
    .end local v2    # "dependencyMeta":Lcom/alibaba/doraemon/Doraemon$MetaData;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mFetcher:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/ArtifactFetcher;

    .line 214
    .local v4, "fetcher":Lcom/alibaba/doraemon/ArtifactFetcher;
    sget-object v5, Lcom/alibaba/doraemon/Doraemon;->sContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/ArtifactFetcher;->init(Landroid/content/Context;)V

    .line 215
    iget-object v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/alibaba/doraemon/Doraemon;->registerArtifactFetcher(Ljava/lang/String;Lcom/alibaba/doraemon/ArtifactFetcher;)V

    .line 216
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/doraemon/Doraemon$MetaData;->mIsReg:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isMainProcess()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/alibaba/doraemon/Doraemon;->sIsMainProcess:Z

    return v0
.end method

.method public static declared-synchronized registerArtifactFetcher(Ljava/lang/String;Lcom/alibaba/doraemon/ArtifactFetcher;)V
    .locals 2
    .param p0, "artifactName"    # Ljava/lang/String;
    .param p1, "fetcher"    # Lcom/alibaba/doraemon/ArtifactFetcher;

    .prologue
    .line 109
    const-class v1, Lcom/alibaba/doraemon/Doraemon;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 113
    :goto_0
    monitor-exit v1

    return-void

    .line 112
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/Doraemon;->sArtifacts:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    sput v0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    sput v0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    goto :goto_0
.end method

.method public static setRunningMode(I)V
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/alibaba/doraemon/Doraemon;->validateMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sput p0, Lcom/alibaba/doraemon/Doraemon;->sMode:I

    .line 72
    :cond_0
    return-void
.end method

.method public static setUserAgentFetcher(Lcom/alibaba/doraemon/UserAgentFetcher;)V
    .locals 0
    .param p0, "userAgentFetcher"    # Lcom/alibaba/doraemon/UserAgentFetcher;

    .prologue
    .line 91
    sput-object p0, Lcom/alibaba/doraemon/Doraemon;->mUserAgentFetcher:Lcom/alibaba/doraemon/UserAgentFetcher;

    .line 92
    return-void
.end method

.method private static validateMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 82
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
