.class public Lcom/taobao/android/runtime/DalvikUtils;
.super Ljava/lang/Object;
.source "DalvikUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/runtime/DalvikUtils$DexOptMode;,
        Lcom/taobao/android/runtime/DalvikUtils$ClassVerifyMode;
    }
.end annotation


# static fields
.field public static final OPTIMIZE_MODE_ALL:I = 0x3

.field public static final OPTIMIZE_MODE_FULL:I = 0x4

.field public static final OPTIMIZE_MODE_NONE:I = 0x1

.field public static final OPTIMIZE_MODE_UNKNOWN:I = 0x0

.field public static final OPTIMIZE_MODE_VERIFIED:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final VERIFY_MODE_ALL:I = 0x3

.field public static final VERIFY_MODE_NONE:I = 0x1

.field public static final VERIFY_MODE_REMOTE:I = 0x2

.field public static final VERIFY_MODE_UNKNOWN:I

.field private static sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/taobao/android/runtime/DalvikUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/DalvikUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static addBootClassPath(Ljava/lang/ClassLoader;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x0

    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal null classLoader argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_0
    sget-boolean v7, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v7, :cond_2

    .line 220
    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    return-object v6

    .line 197
    .restart local p0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    sget-boolean v7, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v7, :cond_1

    .line 201
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->bootClassPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "bootClassPathNative":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 203
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 206
    :cond_3
    check-cast p0, Ldalvik/system/BaseDexClassLoader;

    .end local p0    # "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0}, Lcom/taobao/android/runtime/ClassLoaderInjectorAboveApi14;->getDexFiles(Ldalvik/system/BaseDexClassLoader;)[Ldalvik/system/DexFile;

    move-result-object v3

    .line 207
    .local v3, "dexFiles":[Ldalvik/system/DexFile;
    array-length v6, v3

    new-array v1, v6, [Ljava/lang/String;

    .line 208
    .local v1, "classPaths":[Ljava/lang/String;
    array-length v6, v3

    new-array v2, v6, [I

    .line 209
    .local v2, "cookies":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_4

    .line 210
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 214
    :cond_4
    invoke-static {v1, v2}, Lcom/taobao/android/runtime/DalvikUtils;->addBootClassPathNative([Ljava/lang/String;[I)Z

    move-result v5

    .line 215
    .local v5, "success":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "- DalvikUtils addBootClassPath: classPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", success="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method private static native addBootClassPathNative([Ljava/lang/String;[I)Z
.end method

.method public static bootClassPath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 185
    .local v0, "bootClassPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 178
    .end local v0    # "bootClassPath":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->bootClassPathNative()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "bootClassPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private static native bootClassPathNative()Ljava/lang/String;
.end method

.method public static disableJitCompilation()Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->disableJitCompilationNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native disableJitCompilationNative()Z
.end method

.method public static dvmJdwpStartup(S)Ljava/lang/Boolean;
    .locals 2
    .param p0, "port"    # S
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p0}, Lcom/taobao/android/runtime/DalvikUtils;->dvmJdwpStartupNative(S)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native dvmJdwpStartupNative(S)Z
.end method

.method public static getClassVerifyMode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->getClassVerifyModeNative()I

    move-result v0

    goto :goto_0
.end method

.method private static native getClassVerifyModeNative()I
.end method

.method public static getDexOptMode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->getDexOptModeNative()I

    move-result v0

    goto :goto_0
.end method

.method private static native getDexOptModeNative()I
.end method

.method public static init()Z
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v1, "dalvikhack"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-static {}, Lcom/taobao/android/runtime/DalvikUtils;->nativeInit()Z

    move-result v1

    .line 69
    sput-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 59
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/taobao/android/runtime/DalvikUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p0, "sourcePathName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "outputPathName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    invoke-static {p0, p1, p2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 79
    .local v0, "dexFile":Ldalvik/system/DexFile;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    return-object v0
.end method

.method private static native nativeInit()Z
.end method

.method public static setClassVerifyMode(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "classVerifyMode"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/taobao/android/runtime/DalvikUtils;->setClassVerifyModeNative(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native setClassVerifyModeNative(I)Z
.end method

.method public static setDexOptMode(I)Ljava/lang/Boolean;
    .locals 2
    .param p0, "dexOptMode"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    sget-boolean v1, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-boolean v1, Lcom/taobao/android/runtime/DalvikUtils;->sInit:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0}, Lcom/taobao/android/runtime/DalvikUtils;->setDexOptModeNative(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native setDexOptModeNative(I)Z
.end method
