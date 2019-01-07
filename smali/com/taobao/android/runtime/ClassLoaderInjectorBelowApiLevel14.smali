.class Lcom/taobao/android/runtime/ClassLoaderInjectorBelowApiLevel14;
.super Ljava/lang/Object;
.source "ClassLoaderInjectorBelowApiLevel14.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static injectBelowApiLevel14(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDexClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "classLoaderClass"    # Ljava/lang/Class;
    .param p3, "libPath"    # Ljava/lang/String;
    .param p4, "insertAtFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string/jumbo v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p3, v1, p3, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 19
    .local v0, "dexClassLoader":Ldalvik/system/DexClassLoader;
    instance-of v1, p1, Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_0

    .line 20
    const-string/jumbo v1, "mPaths"

    const-string/jumbo v2, "mPaths"

    invoke-static {p1, p2, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ldalvik/system/DexClassLoader;

    const-string/jumbo v4, "mRawDexPath"

    invoke-static {v0, v3, v4}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p4}, Lcom/taobao/android/runtime/ArrayUtils;->appendArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_0
    const-string/jumbo v1, "mFiles"

    const-string/jumbo v2, "mFiles"

    invoke-static {p1, p2, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ldalvik/system/DexClassLoader;

    const-string/jumbo v4, "mFiles"

    invoke-static {v0, v3, v4}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const-string/jumbo v1, "mZips"

    const-string/jumbo v2, "mZips"

    invoke-static {p1, p2, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ldalvik/system/DexClassLoader;

    const-string/jumbo v4, "mZips"

    invoke-static {v0, v3, v4}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string/jumbo v1, "mDexs"

    const-string/jumbo v2, "mDexs"

    invoke-static {p1, p2, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ldalvik/system/DexClassLoader;

    const-string/jumbo v4, "mDexs"

    invoke-static {v0, v3, v4}, Lcom/taobao/android/runtime/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p4}, Lcom/taobao/android/runtime/ArrayUtils;->combineArray(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/taobao/android/runtime/ReflectionUtils;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
