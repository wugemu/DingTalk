.class public Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;
.super Ljava/lang/Object;
.source "SoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final EventID_SO_INIT:I = 0x5229

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final X86:Ljava/lang/String; = "x86"

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    const-string/jumbo v2, "CPU_ABI"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v0, "armeabi"

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 202
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 7
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 270
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    if-nez p2, :cond_1

    .line 276
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 313
    .local v1, "initSuc":Z
    :goto_1
    return v1

    .line 278
    .end local v1    # "initSuc":Z
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 279
    .local v3, "runtime":Ljava/lang/Runtime;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v0, v4

    .line 280
    .local v0, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Runtime;

    const-string/jumbo v5, "load"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 281
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 294
    .end local v0    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v4

    const/4 v1, 0x0

    .line 312
    .restart local v1    # "initSuc":Z
    goto :goto_1

    .line 301
    .end local v1    # "initSuc":Z
    :catch_1
    move-exception v4

    const/4 v1, 0x0

    .line 312
    .restart local v1    # "initSuc":Z
    goto :goto_1

    .line 309
    .end local v1    # "initSuc":Z
    :catch_2
    move-exception v4

    const/4 v1, 0x0

    .restart local v1    # "initSuc":Z
    goto :goto_1
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 221
    sget-object v0, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 222
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 223
    const-string/jumbo v3, ""

    .line 232
    :goto_0
    return-object v3

    .line 225
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 228
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "bk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 59
    sput-object p0, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static initSo(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public static initSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 8
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 81
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "needso init libray : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    if-nez p2, :cond_0

    .line 86
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :goto_0
    const/4 v0, 0x1

    .line 122
    .local v0, "InitSuc":Z
    :goto_1
    if-nez v0, :cond_3

    .line 126
    :try_start_1
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    invoke-static {p0, p1, p2}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    move-result v4

    .line 129
    .local v4, "res":Z
    if-eqz v4, :cond_1

    .line 195
    .end local v4    # "res":Z
    :goto_2
    return v4

    .line 88
    .end local v0    # "InitSuc":Z
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 89
    .local v5, "runtime":Ljava/lang/Runtime;
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v1, v6

    .line 90
    .local v1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Runtime;

    const-string/jumbo v7, "loadLibrary"

    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 91
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 100
    .end local v1    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v6

    const/4 v0, 0x0

    .line 117
    .restart local v0    # "InitSuc":Z
    goto :goto_1

    .line 106
    .end local v0    # "InitSuc":Z
    :catch_1
    move-exception v6

    const/4 v0, 0x0

    .line 117
    .restart local v0    # "InitSuc":Z
    goto :goto_1

    .line 113
    .end local v0    # "InitSuc":Z
    :catch_2
    move-exception v6

    const/4 v0, 0x0

    .restart local v0    # "InitSuc":Z
    goto :goto_1

    .line 133
    .restart local v4    # "res":Z
    :cond_1
    :try_start_3
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 140
    .end local v4    # "res":Z
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "cpuType":Ljava/lang/String;
    const-string/jumbo v6, "mips"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "x86"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    move-result v6

    if-nez v6, :cond_3

    .line 151
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5

    move-result v0

    .end local v2    # "cpuType":Ljava/lang/String;
    :cond_3
    :goto_3
    move v4, v0

    .line 195
    goto :goto_2

    .line 169
    :catch_3
    move-exception v6

    const/4 v0, 0x0

    .line 188
    goto :goto_3

    .line 176
    :catch_4
    move-exception v6

    const/4 v0, 0x0

    .line 188
    goto :goto_3

    .line 184
    :catch_5
    move-exception v6

    const/4 v0, 0x0

    goto :goto_3

    .line 162
    .restart local v2    # "cpuType":Ljava/lang/String;
    :catch_6
    move-exception v6

    goto :goto_3

    :catch_7
    move-exception v6

    goto :goto_3
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 254
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 3
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 240
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    .locals 16
    .param p0, "libname"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "lib/armeabi/lib"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, "sourcePath":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v13, ""

    .line 324
    .local v13, "zipPath":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 325
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 328
    const/4 v14, 0x0

    .line 432
    .end local v4    # "context":Landroid/content/Context;
    .end local v13    # "zipPath":Ljava/lang/String;
    :goto_0
    return v14

    .line 331
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v13    # "zipPath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 332
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 334
    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 340
    :cond_1
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 342
    .local v12, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 344
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 345
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    if-eqz v14, :cond_2

    .line 348
    const/4 v7, 0x0

    .line 349
    .local v7, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 350
    .local v8, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 351
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const/4 v11, 0x0

    .line 356
    .local v11, "total":I
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {v12, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 360
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "lib"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "bk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".so"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 362
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 364
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 367
    .local v2, "buffers":[B
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "realLength":I
    if-lez v9, :cond_3

    .line 369
    const/4 v14, 0x0

    invoke-static {v2, v14, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    add-int/2addr v11, v9

    goto :goto_1

    .line 377
    :cond_3
    if-eqz v7, :cond_4

    .line 381
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 390
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 396
    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    .line 397
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 404
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 409
    if-lez v11, :cond_b

    .line 411
    invoke-static/range {p0 .. p2}, Lcom/alibaba/doraemon/utils/SoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILjava/lang/ClassLoader;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v14

    goto/16 :goto_0

    .line 377
    .end local v2    # "buffers":[B
    .end local v9    # "realLength":I
    :catchall_0
    move-exception v14

    if-eqz v7, :cond_7

    .line 381
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 389
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 390
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 396
    :cond_8
    :goto_6
    if-eqz v8, :cond_9

    .line 397
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 404
    :cond_9
    :goto_7
    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 405
    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 429
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .end local v11    # "total":I
    .end local v12    # "zf":Ljava/util/zip/ZipFile;
    .end local v13    # "zipPath":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 432
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "realLength":I
    .restart local v11    # "total":I
    .restart local v12    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipPath":Ljava/lang/String;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 428
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .end local v9    # "realLength":I
    .end local v11    # "total":I
    .end local v12    # "zf":Ljava/util/zip/ZipFile;
    .end local v13    # "zipPath":Ljava/lang/String;
    :catch_1
    move-exception v14

    const/4 v14, 0x0

    goto/16 :goto_0

    .restart local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "realLength":I
    .restart local v11    # "total":I
    .restart local v12    # "zf":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipPath":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto :goto_2

    :catch_3
    move-exception v14

    goto :goto_3

    :catch_4
    move-exception v14

    goto :goto_4

    .end local v2    # "buffers":[B
    .end local v9    # "realLength":I
    :catch_5
    move-exception v15

    goto :goto_5

    :catch_6
    move-exception v15

    goto :goto_6

    :catch_7
    move-exception v15

    goto :goto_7
.end method
