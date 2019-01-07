.class public Lcom/taobao/weex/utils/WXSoInstallMgrSdk;
.super Ljava/lang/Object;
.source "WXSoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final ARMEABI_Size:I = 0x36af4c

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final STARTUPSO:Ljava/lang/String; = "/libweexjsb.so"

.field private static final STARTUPSOANDROID15:Ljava/lang/String; = "/libweexjst.so"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static final X86_Size:I = 0x423c80

.field static mContext:Landroid/content/Context;

.field private static mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private static mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 79
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 80
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    const-string/jumbo v2, "CPU_ABI"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    const-string/jumbo v0, "armeabi"

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "build"    # Landroid/os/Build;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 254
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 256
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 7
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .prologue
    const/4 v6, 0x0

    .line 367
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz v2, :cond_1

    .line 371
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoad(Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 386
    .local v1, "initSuc":Z
    :goto_1
    return v1

    .line 373
    .end local v1    # "initSuc":Z
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 379
    .restart local v1    # "initSuc":Z
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "_loadUnzipSo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WX_KEY_EXCEPTION_SDK_INIT_WX_ERR_COPY_FROM_APK] \n Detail Msg is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-static {v6, v2, v3, v4, v6}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 384
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 318
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 319
    const-string/jumbo v3, ""

    .line 328
    :goto_0
    return-object v3

    .line 322
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

    .line 324
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 325
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 328
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

.method static checkSoIsValid(Ljava/lang/String;J)Z
    .locals 13
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "size"    # J

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 278
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    move v6, v7

    .line 307
    :goto_0
    return v6

    .line 282
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 283
    .local v4, "start":J
    const-class v6, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    instance-of v6, v6, Ldalvik/system/PathClassLoader;

    if-eqz v6, :cond_4

    .line 285
    const-class v6, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    check-cast v6, Ldalvik/system/PathClassLoader;

    check-cast v6, Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 287
    goto :goto_0

    .line 289
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v6, p1, v10

    if-nez v6, :cond_3

    .line 292
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "weex so size check path :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 293
    goto :goto_0

    :cond_3
    move v6, v7

    .line 295
    goto :goto_0

    .line 298
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "start":J
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v7, "checkSoIsValid"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for weex so size check fail exception :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-static {v12, v6, v7, v9, v12}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "weex so size check fail exception :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    move v6, v8

    .line 307
    goto/16 :goto_0
.end method

.method public static copyStartUpSo()V
    .locals 13

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "cacheFile":Ljava/lang/String;
    const/4 v8, 0x1

    .line 210
    .local v8, "pieSupport":Z
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-ge v11, v12, :cond_2

    .line 211
    const/4 v8, 0x0

    .line 212
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/libweexjst.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v4, "newfile":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 220
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "/data/data/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/lib"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v11, "/cache"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_1

    .line 222
    const-string/jumbo v11, "/cache"

    const-string/jumbo v12, "/lib"

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 226
    :cond_1
    if-eqz v8, :cond_3

    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/libweexjsb.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "soName":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, "oldfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 234
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 235
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 236
    .local v1, "data":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 238
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 246
    .end local v0    # "cacheFile":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "newfile":Ljava/io/File;
    .end local v5    # "oldfile":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "pieSupport":Z
    .end local v10    # "soName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 214
    .restart local v0    # "cacheFile":Ljava/lang/String;
    .restart local v8    # "pieSupport":Z
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/libweexjsb.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "newfile":Ljava/io/File;
    goto/16 :goto_0

    .line 229
    .restart local v7    # "path":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/libweexjst.so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "soName":Ljava/lang/String;
    goto :goto_1

    .line 240
    .restart local v1    # "data":[B
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "oldfile":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 241
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 243
    .end local v1    # "data":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static init(Landroid/content/Context;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "loader"    # Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    .param p2, "listener"    # Lcom/taobao/weex/IWXStatisticsListener;

    .prologue
    .line 85
    sput-object p0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 86
    sput-object p1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 87
    sput-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 88
    return-void
.end method

.method public static initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 11
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 112
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "cpuType":Ljava/lang/String;
    const-string/jumbo v6, "mips"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v7, "initSo"

    const-string/jumbo v8, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is MIPS"

    invoke-static {v10, v6, v7, v8, v10}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v4, v5

    .line 183
    :cond_0
    :goto_0
    return v4

    .line 122
    :cond_1
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->copyStartUpSo()V

    .line 133
    :try_start_0
    sget-object v6, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz v6, :cond_3

    .line 134
    sget-object v6, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    invoke-interface {v6, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 139
    :goto_1
    const/4 v0, 0x1

    .line 153
    .local v0, "InitSuc":Z
    :goto_2
    if-nez v0, :cond_7

    .line 156
    :try_start_1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result v4

    .line 158
    .local v4, "res":Z
    if-nez v4, :cond_0

    .line 162
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 167
    .end local v4    # "res":Z
    :cond_2
    const-string/jumbo v6, "mips"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    .line 168
    goto :goto_0

    .line 136
    .end local v0    # "InitSuc":Z
    :cond_3
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e2":Ljava/lang/Throwable;
    :goto_3
    const-string/jumbo v6, "armeabi"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "x86"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    :cond_4
    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v7, "initSo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n Detail Error is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 145
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static {v10, v6, v7, v8, v10}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "InitSuc":Z
    goto :goto_2

    .line 171
    .end local v3    # "e2":Ljava/lang/Throwable;
    :cond_6
    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->unZipSelectedFiles(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    :cond_7
    :goto_4
    move v4, v0

    .line 183
    goto :goto_0

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e2":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 178
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Throwable;
    :goto_5
    const/4 v0, 0x0

    .line 180
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 178
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    goto :goto_5

    .line 140
    .end local v0    # "InitSuc":Z
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public static isCPUSupport()Z
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "cpuType":Ljava/lang/String;
    const-string/jumbo v1, "mips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 352
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static isX86()Z
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "cpuType":Ljava/lang/String;
    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 339
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "a":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 20
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "utAdapter"    # Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "lib/armeabi/lib"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "sourcePath":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 395
    .local v14, "zipPath":Ljava/lang/String;
    sget-object v4, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/content/Context;

    .line 396
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 397
    const/4 v15, 0x0

    .line 490
    :goto_0
    return v15

    .line 400
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 401
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 402
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 406
    :cond_1
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 409
    .local v13, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 410
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 411
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_2

    .line 413
    const/4 v8, 0x0

    .line 414
    .local v8, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 415
    .local v9, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 416
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const/4 v12, 0x0

    .line 420
    .local v12, "total":I
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {v13, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 424
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "lib"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "bk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".so"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 426
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 428
    const/16 v15, 0x400

    new-array v2, v15, [B

    .line 431
    .local v2, "buffers":[B
    :goto_1
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_3

    .line 433
    const/4 v15, 0x0

    invoke-static {v2, v15, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    add-int/2addr v12, v10

    goto :goto_1

    .line 438
    :cond_3
    if-eqz v8, :cond_4

    .line 440
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 448
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 456
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 463
    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 464
    const/4 v13, 0x0

    .line 468
    if-lez v12, :cond_c

    .line 469
    invoke-static/range {p0 .. p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result v15

    goto/16 :goto_0

    .line 441
    :catch_0
    move-exception v5

    .line 442
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 475
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :catch_1
    move-exception v5

    .line 476
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 477
    const/4 v15, 0x0

    sget-object v16, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v17, "unZipSelectedFiles"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "[WX_KEY_EXCEPTION_SDK_INIT_unZipSelectedFiles] \n Detail msg is: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 477
    invoke-static/range {v15 .. v19}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 485
    if-eqz v13, :cond_7

    .line 486
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 490
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 449
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v12    # "total":I
    :catch_2
    move-exception v5

    .line 450
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 485
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_8

    .line 486
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 487
    :cond_8
    throw v15

    .line 457
    .restart local v2    # "buffers":[B
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v12    # "total":I
    :catch_3
    move-exception v5

    .line 458
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 438
    .end local v2    # "buffers":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "realLength":I
    :catchall_1
    move-exception v15

    if-eqz v8, :cond_9

    .line 440
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 446
    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    .line 448
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 454
    :cond_a
    :goto_7
    if-eqz v9, :cond_b

    .line 456
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 463
    :cond_b
    :goto_8
    :try_start_c
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 464
    const/4 v13, 0x0

    throw v15

    .line 441
    :catch_4
    move-exception v5

    .line 442
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 449
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 450
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 457
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 458
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 487
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffers":[B
    .restart local v10    # "realLength":I
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 486
    .end local v2    # "buffers":[B
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "total":I
    :cond_d
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_5
.end method
