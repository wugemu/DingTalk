.class public Lcom/alipay/mobile/nebula/util/H5DeviceHelper;
.super Ljava/lang/Object;
.source "H5DeviceHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DeviceHelper"

.field private static sAbi:Ljava/lang/String;

.field private static sAbiList:[Ljava/lang/String;

.field private static sArch:Ljava/lang/String;

.field private static sCpuAbi:Ljava/lang/String;

.field private static sCpuHardware:Ljava/lang/String;

.field private static sIsX86:Ljava/lang/Boolean;

.field private static sSupportedABIs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuHardware()Ljava/lang/String;
    .locals 8

    .prologue
    .line 215
    sget-object v6, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuHardware:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 216
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuHardware:Ljava/lang/String;

    .line 248
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_0
    return-object v2

    .line 218
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, "cpuHardware":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 221
    .restart local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v0, 0x0

    .line 223
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 228
    const-string/jumbo v6, "H5DeviceHelper"

    const-string/jumbo v7, "/proc/cpuinfo lacks a Hardware entry, use Build.BOARD"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v1

    .line 244
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 247
    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    .line 248
    .end local v2    # "cpuHardware":Ljava/lang/String;
    :cond_3
    sput-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuHardware:Ljava/lang/String;

    goto :goto_0

    .line 232
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "cpuHardware":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v6, "Hardware\t: "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 237
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v6, "H5DeviceHelper"

    const-string/jumbo v7, "Cannot get Hardware from /proc/cpuinfo"

    invoke-static {v6, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 240
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 237
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v7, Ljava/io/File;

    const-string/jumbo v11, "/system/build.prop"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v7, "propFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 181
    .local v5, "propFIS":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 182
    .local v8, "propISR":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 184
    .local v3, "propBR":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .local v6, "propFIS":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .local v9, "propISR":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 189
    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .local v4, "propBR":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 193
    const-string/jumbo v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "cols":[Ljava/lang/String;
    array-length v11, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 195
    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "trimKeyCol":Ljava/lang/String;
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 197
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v11

    .line 204
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 208
    .end local v0    # "cols":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .end local v10    # "trimKeyCol":Ljava/lang/String;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    :goto_0
    return-object v11

    .line 204
    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 208
    .end local v2    # "line":Ljava/lang/String;
    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    const-string/jumbo v11, "H5DeviceHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getFromSystemProp exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 204
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    :goto_3
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    .line 204
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v11

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_3

    .line 201
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "propBR":Ljava/io/BufferedReader;
    .end local v5    # "propFIS":Ljava/io/FileInputStream;
    .end local v8    # "propISR":Ljava/io/InputStreamReader;
    .restart local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v9    # "propISR":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "propBR":Ljava/io/BufferedReader;
    .restart local v3    # "propBR":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "propISR":Ljava/io/InputStreamReader;
    .restart local v8    # "propISR":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "propFIS":Ljava/io/FileInputStream;
    .restart local v5    # "propFIS":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static isArchContains(Ljava/lang/String;)Z
    .locals 7
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 117
    const-string/jumbo v3, "os.arch"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    .line 119
    :cond_0
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 175
    :goto_0
    return v3

    .line 124
    :cond_1
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 126
    :try_start_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    :goto_1
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 133
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5DeviceHelper"

    const-string/jumbo v6, "exception "

    invoke-static {v3, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    if-nez v3, :cond_4

    .line 138
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_4

    .line 140
    :try_start_1
    const-class v3, Landroid/os/Build;

    const-string/jumbo v6, "SUPPORTED_ABIS"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 141
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_4
    :goto_2
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_5

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 150
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 151
    goto :goto_0

    .line 142
    :catch_1
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5DeviceHelper"

    const-string/jumbo v6, "exception "

    invoke-static {v3, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 159
    const-string/jumbo v3, "ro.product.cpu.abi"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    .line 161
    :cond_6
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    .line 162
    goto/16 :goto_0

    .line 166
    :cond_7
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    if-nez v3, :cond_8

    .line 167
    const-string/jumbo v3, "ro.product.cpu.abilist"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "abilist":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 169
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    .line 172
    .end local v0    # "abilist":Ljava/lang/String;
    :cond_8
    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_9

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_9

    sget-object v3, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 172
    goto/16 :goto_0
.end method

.method private static isX86Device()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, "process":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 47
    .local v6, "ir":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 50
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string/jumbo v12, "getprop ro.product.cpu.abi"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 51
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .local v7, "ir":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 53
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 55
    const-string/jumbo v11, "x86"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 56
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 64
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    if-eqz v8, :cond_1

    .line 67
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 68
    const/4 v8, 0x0

    .line 73
    .end local v0    # "abi":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string/jumbo v12, "getprop ro.product.cpu.abilist"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 74
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "abilist":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 78
    const-string/jumbo v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "abi":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v0, v11

    const-string/jumbo v12, "x86"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 80
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 88
    .end local v0    # "abi":[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    if-eqz v8, :cond_3

    .line 91
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 95
    .end local v1    # "abilist":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string/jumbo v11, "os.arch"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "arch":Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string/jumbo v11, "x86"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    :goto_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 98
    sput-object v9, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    return v9

    .line 57
    .end local v2    # "arch":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .local v0, "abi":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :cond_4
    :try_start_6
    const-string/jumbo v11, "arm"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_0

    .line 61
    .end local v0    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 62
    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .local v5, "e":Ljava/lang/Throwable;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :goto_5
    :try_start_7
    const-string/jumbo v11, "H5DeviceHelper"

    const-string/jumbo v12, "exception detail"

    invoke-static {v11, v12, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    if-eqz v8, :cond_9

    .line 67
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 68
    const/4 v8, 0x0

    move-object v4, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    goto/16 :goto_1

    .line 64
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v9

    :goto_6
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    if-eqz v8, :cond_5

    .line 67
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 68
    :cond_5
    throw v9

    .line 81
    .local v0, "abi":[Ljava/lang/String;
    .restart local v1    # "abilist":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    :try_start_8
    aget-object v11, v0, v11

    const-string/jumbo v12, "arm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 82
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sput-object v11, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    .line 88
    .end local v0    # "abi":[Ljava/lang/String;
    .end local v1    # "abilist":Ljava/lang/String;
    :catch_1
    move-exception v11

    :goto_7
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    if-eqz v8, :cond_3

    .line 91
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    .line 88
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :goto_8
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    if-eqz v8, :cond_7

    .line 91
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_7
    throw v9

    .restart local v2    # "arch":Ljava/lang/String;
    :cond_8
    move v9, v10

    .line 96
    goto :goto_4

    .line 88
    .end local v2    # "arch":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    :catchall_3
    move-exception v9

    goto :goto_8

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 64
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v9

    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catchall_5
    move-exception v9

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 61
    :catch_4
    move-exception v5

    goto :goto_5

    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v5

    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    goto/16 :goto_5

    .restart local v5    # "e":Ljava/lang/Throwable;
    :cond_9
    move-object v4, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    move-object v7, v6

    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    goto/16 :goto_1
.end method

.method private static isX86DeviceV2()Z
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "x86"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    .line 103
    const-string/jumbo v0, "H5DeviceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isX86DeviceV2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized x86(I)Z
    .locals 3
    .param p0, "version"    # I

    .prologue
    .line 28
    const-class v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 29
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isX86Device()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 40
    :goto_0
    monitor-exit v2

    return v1

    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isX86DeviceV2()Z

    move-result v1

    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "H5DeviceHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
