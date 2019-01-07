.class Lcom/taobao/android/runtime/ClassLoaderInjectorAliyunOs;
.super Ljava/lang/Object;
.source "ClassLoaderInjectorAliyunOs.java"


# static fields
.field public static final CLASS_LOADER_ALIYUN:Ljava/lang/String; = "dalvik.system.LexClassLoader"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectInAliyunOs(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "classLoaderClass"    # Ljava/lang/Class;
    .param p3, "libPath"    # Ljava/lang/String;
    .param p4, "insertAtFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    new-instance v4, Ldalvik/system/DexClassLoader;

    const-string/jumbo v5, "dex"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p3, v5, p3, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 22
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "lexFileName":Ljava/lang/String;
    const-string/jumbo v4, "\\.[a-zA-Z0-9]+"

    const-string/jumbo v5, ".lex"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string/jumbo v4, "dalvik.system.LexClassLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "classLexClassLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 30
    .local v1, "constructorLexClassLoader":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dex"

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "dex"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p3, v4, v9

    aput-object p1, v4, v10

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, "localLexClassLoader":Ljava/lang/Object;
    instance-of v4, p1, Ldalvik/system/PathClassLoader;

    if-eqz v4, :cond_0

    .line 40
    const-string/jumbo v4, "mPaths"

    const-string/jumbo v5, "mPaths"

    invoke-static {p1, p2, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "mRawDexPath"

    invoke-static {v3, v0, v6}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p4}, Lcom/taobao/android/runtime/ArrayUtils;->appendArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, p2, v4, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_0
    const-string/jumbo v4, "mFiles"

    const-string/jumbo v5, "mFiles"

    invoke-static {p1, p2, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "mFiles"

    invoke-static {v3, v0, v6}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, p2, v4, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v4, "mZips"

    const-string/jumbo v5, "mZips"

    invoke-static {p1, p2, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "mZips"

    invoke-static {v3, v0, v6}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, p2, v4, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string/jumbo v4, "mLexs"

    const-string/jumbo v5, "mLexs"

    invoke-static {p1, p2, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "mDexs"

    invoke-static {v3, v0, v6}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, p2, v4, v5}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static isAliyunOs()Z
    .locals 1

    .prologue
    .line 90
    :try_start_0
    const-string/jumbo v0, "dalvik.system.LexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
