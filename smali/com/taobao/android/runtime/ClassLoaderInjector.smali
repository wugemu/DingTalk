.class public final Lcom/taobao/android/runtime/ClassLoaderInjector;
.super Ljava/lang/Object;
.source "ClassLoaderInjector.java"


# static fields
.field private static final CLASS_LOADER_BASE_DEX:Ljava/lang/String; = "dalvik.system.BaseDexClassLoader"

.field private static final TAG:Ljava/lang/String; = "ClassLoaderInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasBaseDexClassLoader()Z
    .locals 1

    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inject(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "libPath"    # Ljava/lang/String;
    .param p3, "antiLazyClass"    # Ljava/lang/String;
    .param p4, "injectAtFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Hotpatch file does not exist:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1
    invoke-static {}, Lcom/taobao/android/runtime/ClassLoaderInjectorAliyunOs;->isAliyunOs()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    instance-of v3, p1, Ldalvik/system/PathClassLoader;

    if-eqz v3, :cond_2

    .line 65
    const-class v0, Ldalvik/system/PathClassLoader;

    .line 69
    .local v0, "classLoaderClass":Ljava/lang/Class;
    :goto_1
    invoke-static {p0, p1, v0, p2, p4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAliyunOs;->injectInAliyunOs(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)V

    goto :goto_0

    .line 67
    .end local v0    # "classLoaderClass":Ljava/lang/Class;
    :cond_2
    const-class v0, Ldalvik/system/DexClassLoader;

    .restart local v0    # "classLoaderClass":Ljava/lang/Class;
    goto :goto_1

    .line 77
    .end local v0    # "classLoaderClass":Ljava/lang/Class;
    :cond_3
    invoke-static {}, Lcom/taobao/android/runtime/ClassLoaderInjector;->hasBaseDexClassLoader()Z

    move-result v3

    if-nez v3, :cond_5

    .line 80
    :try_start_0
    instance-of v3, p1, Ldalvik/system/PathClassLoader;

    if-eqz v3, :cond_4

    .line 81
    const-class v0, Ldalvik/system/PathClassLoader;

    .line 85
    .restart local v0    # "classLoaderClass":Ljava/lang/Class;
    :goto_2
    invoke-static {p0, p1, v0, p2, p4}, Lcom/taobao/android/runtime/ClassLoaderInjectorBelowApiLevel14;->injectBelowApiLevel14(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "classLoaderClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "ClassLoaderInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fail to inject file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 83
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    const-class v0, Ldalvik/system/DexClassLoader;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "classLoaderClass":Ljava/lang/Class;
    goto :goto_2

    .line 100
    .end local v0    # "classLoaderClass":Ljava/lang/Class;
    :cond_5
    :try_start_2
    invoke-static {p0, p1, p2, p4}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->injectAboveEqualApiLevel14(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "ClassLoaderInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "fail to inject file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static inject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libPath"    # Ljava/lang/String;
    .param p2, "antiLazyClass"    # Ljava/lang/String;
    .param p3, "injectAtFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 37
    .local v0, "localClassLoader":Ldalvik/system/PathClassLoader;
    invoke-static {p0, v0, p1, p2, p3}, Lcom/taobao/android/runtime/ClassLoaderInjector;->inject(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method
