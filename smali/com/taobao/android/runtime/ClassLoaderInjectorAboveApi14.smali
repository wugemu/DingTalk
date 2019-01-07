.class Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;
.super Ljava/lang/Object;
.source "ClassLoaderInjectorAboveApi14.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCookie(Ldalvik/system/DexFile;)Ljava/lang/Object;
    .locals 2
    .param p0, "dexFile"    # Ldalvik/system/DexFile;

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v1, "mCookie"

    invoke-static {p0, v1}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCookies(Ldalvik/system/BaseDexClassLoader;)[Ljava/lang/Object;
    .locals 5
    .param p0, "classloader"    # Ldalvik/system/BaseDexClassLoader;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "dexElements":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 41
    .local v3, "length":I
    new-array v0, v3, [Ljava/lang/Object;

    .line 42
    .local v0, "cookies":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 43
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexFile(Ljava/lang/Object;)Ldalvik/system/DexFile;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getCookie(Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method private static getDexElements(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 70
    :try_start_0
    const-string/jumbo v1, "dexElements"

    invoke-static {p0, v1}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getDexFile(Ljava/lang/Object;)Ldalvik/system/DexFile;
    .locals 2
    .param p0, "elements"    # Ljava/lang/Object;

    .prologue
    .line 78
    :try_start_0
    const-string/jumbo v1, "dexFile"

    invoke-static {p0, v1}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDexFiles(Ldalvik/system/BaseDexClassLoader;)[Ldalvik/system/DexFile;
    .locals 5
    .param p0, "classloader"    # Ldalvik/system/BaseDexClassLoader;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "dexElements":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 51
    .local v3, "length":I
    new-array v1, v3, [Ldalvik/system/DexFile;

    .line 52
    .local v1, "dexFiles":[Ldalvik/system/DexFile;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 53
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexFile(Ljava/lang/Object;)Ldalvik/system/DexFile;

    move-result-object v4

    aput-object v4, v1, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "baseDexClassLoader"    # Ljava/lang/Object;

    .prologue
    .line 60
    :try_start_0
    const-class v1, Ldalvik/system/BaseDexClassLoader;

    const-string/jumbo v2, "pathList"

    invoke-static {p0, v1, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static injectAboveEqualApiLevel14(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDexClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "insertAtFirst"    # Z

    .prologue
    .line 20
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string/jumbo v4, "dex"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, p2, v4, p2, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 25
    .local v0, "dexClassLoader":Ldalvik/system/DexClassLoader;
    invoke-static {p1}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p3}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "dexElements":Ljava/lang/Object;
    invoke-static {p1}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    .local v3, "pathList":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "dexElements"

    invoke-static {v3, v4, v5, v1}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    sget-object v4, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ClassLoader"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
