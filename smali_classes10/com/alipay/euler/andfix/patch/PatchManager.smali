.class public Lcom/alipay/euler/andfix/patch/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch"

.field public static final SP_MD5:Ljava/lang/String; = "-md5"

.field public static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final SP_VERSION:Ljava/lang/String; = "version"

.field private static final SUFFIX:Ljava/lang/String; = ".jar"

.field private static final TAG:Ljava/lang/String; = "PatchManager"


# instance fields
.field private mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

.field private mAppVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mDirs:Ljava/lang/String;

.field private final mLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatchDir:Ljava/io/File;

.field private final mPatches:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/alipay/euler/andfix/patch/Patch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/alipay/euler/andfix/log/Logger;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/alipay/euler/andfix/log/Logger;
    .param p3, "dir"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDirs:Ljava/lang/String;

    .line 106
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Log;->setLogger(Lcom/alipay/euler/andfix/log/Logger;)V

    .line 107
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "apatch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    .line 116
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    .line 118
    return-void

    .line 112
    :cond_0
    iput-object p3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDirs:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDirs:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    goto :goto_0
.end method

.method private fix(Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "patch"    # Lcom/alipay/euler/andfix/patch/Patch;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "patchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/euler/andfix/patch/Patch;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string/jumbo v0, "PatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getAddClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getAddClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 358
    const-string/jumbo v0, "PatchManager"

    const-string/jumbo v1, "addClass: preLoadAddClasses"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getAddClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/alipay/euler/andfix/AndFixManager;->preLoadAddClasses(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getPrepareClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/euler/andfix/AndFixManager;->prepareClass(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 362
    const-string/jumbo v0, "PatchManager"

    const-string/jumbo v1, "makeClassesPublic : modifedClasses"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getModifiedClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/euler/andfix/AndFixManager;->makeClassesPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 364
    const-string/jumbo v0, "PatchManager"

    const-string/jumbo v1, "makeClassesPublic : UsedClasses"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getUsedClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/euler/andfix/AndFixManager;->makeClassesPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 366
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1, p4}, Lcom/alipay/euler/andfix/patch/Patch;->getUsedMethods(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/euler/andfix/AndFixManager;->makeMethodsPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0
.end method

.method private hasPatchFile()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 170
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 171
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    const/4 v2, 0x1

    goto :goto_0

    .line 170
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private initPatches()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 192
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 193
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V
    .locals 7
    .param p1, "patch"    # Lcom/alipay/euler/andfix/patch/Patch;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    const-string/jumbo v4, "PatchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadPatch(patch="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v3

    .line 403
    .local v3, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    .local v2, "patchName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string/jumbo v6, "*"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 409
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1, v2}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 411
    .local v1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->fix(Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 415
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "patchName":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v3, "PatchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addPatch(file="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initAndfixManager()V

    .line 209
    :try_start_0
    new-instance v2, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-direct {v2, p1}, Lcom/alipay/euler/andfix/patch/Patch;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .local v2, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    :try_start_1
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 216
    .end local v2    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .restart local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    :cond_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    new-instance v3, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to addPath(File="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .restart local v2    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .restart local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    goto :goto_0
.end method

.method public addPatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public addPatch(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    const-string/jumbo v5, "PatchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "addPatch(path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", immediately="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v4, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 235
    const-string/jumbo v5, "PatchManager"

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    const-string/jumbo v5, "PatchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "patch ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is already loaded."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 242
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alipay/euler/andfix/patch/Patch;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/Patch;

    .line 244
    .local v0, "childPatch":Lcom/alipay/euler/andfix/patch/Patch;
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 249
    .end local v0    # "childPatch":Lcom/alipay/euler/andfix/patch/Patch;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alipay/euler/andfix/patch/Patch;>;"
    :cond_3
    invoke-static {v4, v1}, Lcom/alipay/euler/andfix/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 251
    :cond_4
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    move-result-object v3

    .line 253
    .local v3, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    if-eqz v3, :cond_0

    .line 254
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V

    goto :goto_0
.end method

.method public cleanPatches(Z)V
    .locals 10
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 277
    const-string/jumbo v5, "PatchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cleanPatches(force="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initAndfixManager()V

    .line 279
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "_andfix_"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 280
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 283
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 284
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v3, v4

    .line 285
    .local v1, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/alipay/euler/andfix/AndFixManager;->removeOptFile(Landroid/content/Context;Ljava/io/File;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/euler/andfix/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 288
    new-instance v4, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v5, "File delete failed"

    invoke-direct {v4, v5}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_0
    const-string/jumbo v6, "PatchManager"

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " delete success."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-md5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 298
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method public clearPatches()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 435
    return-void
.end method

.method public getPatchDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "debuggable"    # Z

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->init(Ljava/lang/String;ZZ)V

    .line 122
    return-void
.end method

.method public init(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "appVersion"    # Ljava/lang/String;
    .param p2, "debuggable"    # Z
    .param p3, "autoLoad"    # Z

    .prologue
    const/4 v6, 0x0

    .line 133
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAppVersion:Ljava/lang/String;

    .line 134
    iput-boolean p2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDebuggable:Z

    .line 136
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    const-string/jumbo v3, "PatchManager"

    const-string/jumbo v4, "patch dir create error."

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->hasPatchFile()Z

    move-result v0

    .line 144
    .local v0, "hasPatch":Z
    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initAndfixManager()V

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "_andfix_"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "ver":Ljava/lang/String;
    const-string/jumbo v3, "PatchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PatchManager.init(ver="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 152
    :cond_4
    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {p0, v6}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 155
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "version"

    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAppVersion:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 157
    :cond_6
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initPatches()V

    goto :goto_0
.end method

.method public initAndfixManager()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    if-eqz v0, :cond_1

    .line 184
    monitor-exit p0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 186
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/euler/andfix/AndFixManager;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDebuggable:Z

    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mDirs:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/euler/andfix/AndFixManager;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    .line 187
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public loadPatch()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string/jumbo v5, "*"

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/Patch;

    .line 379
    .local v1, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v3

    .line 380
    .local v3, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 381
    .local v2, "patchName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 383
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "PatchManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loadPatch().fix(patchName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", patch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {p0, v1, v6, v0, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->fix(Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v0    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .end local v2    # "patchName":Ljava/lang/String;
    .end local v3    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "patchName"    # Ljava/lang/String;
    .param p2, "patch"    # Lcom/alipay/euler/andfix/patch/Patch;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v1

    .line 342
    .local v1, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const-string/jumbo v2, "PatchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadPatch().fix(patchName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", patch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    invoke-virtual {p2}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", classLoader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v2, v3}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2, p1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->fix(Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    .line 349
    .end local v0    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "patchName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/euler/andfix/patch/Patch;

    .line 326
    .local v1, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    .line 327
    .local v2, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const-string/jumbo v4, "PatchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadPatch().fix(patchName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", patch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 329
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", classLoader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-static {v4, v5}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, p1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 331
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->fix(Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v0    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .end local v2    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public removeAllPatch()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 309
    return-void
.end method

.method public rollback()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatches:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    .line 423
    :try_start_0
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->rollback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v2, "rollback exception"

    invoke-direct {v1, v2, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
