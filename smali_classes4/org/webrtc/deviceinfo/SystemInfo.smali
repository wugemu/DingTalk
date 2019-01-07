.class public Lorg/webrtc/deviceinfo/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field private static final CMD_TIMEOUT:J = 0x1f4L

.field private static CPUFreq:I = 0x0

.field private static CPUNum:I = 0x0

.field private static CPUType:Ljava/lang/String; = null

.field private static IsYunos:I = 0x0

.field public static final NetworkStatusNotReachable:I = 0x1

.field public static final NetworkStatusReachableVia2G:I = 0x2

.field public static final NetworkStatusReachableVia3G:I = 0x3

.field public static final NetworkStatusReachableVia3GOr2G:I = 0x4

.field public static final NetworkStatusReachableVia4G:I = 0x5

.field public static final NetworkStatusReachableViaOther:I = 0x8

.field public static final NetworkStatusReachableViaWWAN:I = 0x6

.field public static final NetworkStatusReachableViaWiFi:I = 0x7

.field private static OSVersion:Ljava/lang/String;

.field private static ProductBrand:Ljava/lang/String;

.field private static ProductModel:Ljava/lang/String;

.field private static TotalMem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->IsYunos:I

    .line 42
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductBrand:Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->CPUType:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    sput-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->OSVersion:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->CPUNum:I

    .line 47
    const/16 v0, 0x3e8

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->CPUFreq:I

    .line 48
    const/16 v0, 0x200

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->TotalMem:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractValue([BI)I
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 80
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 81
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 82
    move v0, p1

    .line 83
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 84
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 85
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 88
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return v2

    .line 90
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 366
    :try_start_0
    const-string/jumbo v2, "connectivity"

    .line 367
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 368
    .local v0, "connectManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 373
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v1

    .line 371
    .restart local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 373
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    const-string/jumbo v1, ""

    .line 395
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 396
    .local v0, "manager":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "manager":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAvailBattery()I
    .locals 1

    .prologue
    .line 293
    const/16 v0, 0x64

    return v0
.end method

.method public static getCpuNums()I
    .locals 6

    .prologue
    .line 192
    const/4 v0, 0x1

    .line 211
    .local v0, "coreNums":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Lorg/webrtc/deviceinfo/SystemInfo$1CpuFilter;

    invoke-direct {v3}, Lorg/webrtc/deviceinfo/SystemInfo$1CpuFilter;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 215
    .local v2, "files":[Ljava/io/File;
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Core number "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lieg;->a(Ljava/lang/String;)V

    .line 222
    return v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getIntProperties(Ljava/lang/String;I)I
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 52
    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 54
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 58
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local p1    # "def":I
    :goto_0
    return p1

    .line 55
    .restart local p1    # "def":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMaxCpuFreq()I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "cpuFreq":I
    invoke-static {}, Lorg/webrtc/deviceinfo/SystemInfo;->isInBlackList()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .line 288
    :goto_0
    return v0

    .line 266
    :cond_0
    :try_start_0
    const-string/jumbo v3, ""

    .line 267
    .local v3, "result":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "/system/bin/cat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v7, v5, v6

    .line 268
    invoke-static {v5}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "recordCmd":Ljava/lang/String;
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v1}, Liem;->a(JLjava/lang/String;)Liem$a;

    move-result-object v2

    .line 270
    .local v2, "recordStatus":Liem$a;
    if-eqz v2, :cond_1

    iget-object v5, v2, Liem$a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    iget-object v3, v2, Liem$a;->b:Ljava/lang/String;

    .line 273
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "recordCmd":Ljava/lang/String;
    .end local v2    # "recordStatus":Liem$a;
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "Cpu freq "

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    invoke-static {v5}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2016
    const-string/jumbo v5, "OpenAV"

    invoke-static {v5, v4}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    .line 284
    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 313
    invoke-static {p0}, Lorg/webrtc/deviceinfo/SystemInfo;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/deviceinfo/SystemInfo;->parseNetWorkType(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0
.end method

.method private static getStringProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, p1

    .line 69
    goto :goto_0
.end method

.method public static getTotalMem(Landroid/content/Context;)I
    .locals 10
    .param p0, "cxt"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 228
    const-wide/16 v4, 0x0

    .line 229
    .local v4, "total":J
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    if-eqz p0, :cond_1

    .line 231
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 232
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 233
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 235
    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v8, 0x100000

    div-long v4, v6, v8

    .line 251
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 252
    const-wide/16 v4, 0x0

    .line 255
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Total memory "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " M"

    aput-object v8, v6, v7

    invoke-static {v6}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lieg;->a(Ljava/lang/String;)V

    .line 257
    long-to-int v6, v4

    return v6

    .line 239
    :cond_1
    const-string/jumbo v2, "/proc/meminfo"

    .line 241
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v6, "MemTotal"

    invoke-static {v6, v3}, Lorg/webrtc/deviceinfo/SystemInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v6

    int-to-long v4, v6

    .line 244
    const-wide/16 v6, 0x400

    div-long/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public static getUnusedMem(Landroid/content/Context;)I
    .locals 8
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 178
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 181
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 182
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 186
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 187
    .local v2, "unused":I
    return v2
.end method

.method public static getWIFISignalIntensity()I
    .locals 1

    .prologue
    .line 389
    const/16 v0, -0xa

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 132
    const-string/jumbo v0, "persist.sys.yunosflag"

    invoke-static {v0, v2}, Lorg/webrtc/deviceinfo/SystemInfo;->getIntProperties(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->IsYunos:I

    .line 133
    invoke-static {}, Lorg/webrtc/deviceinfo/SystemInfo;->isYunOsSystem3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.yunos.version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/webrtc/deviceinfo/SystemInfo;->getStringProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->OSVersion:Ljava/lang/String;

    .line 134
    invoke-static {}, Lorg/webrtc/deviceinfo/SystemInfo;->getCpuNums()I

    move-result v0

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->CPUNum:I

    .line 135
    invoke-static {}, Lorg/webrtc/deviceinfo/SystemInfo;->getMaxCpuFreq()I

    move-result v0

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->CPUFreq:I

    .line 136
    invoke-static {p0}, Lorg/webrtc/deviceinfo/SystemInfo;->getTotalMem(Landroid/content/Context;)I

    move-result v0

    sput v0, Lorg/webrtc/deviceinfo/SystemInfo;->TotalMem:I

    .line 138
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Device info: YunOS -> "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lorg/webrtc/deviceinfo/SystemInfo;->IsYunos:I

    .line 139
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "osVer ->"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/webrtc/deviceinfo/SystemInfo;->OSVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "coreNum ->"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lorg/webrtc/deviceinfo/SystemInfo;->CPUNum:I

    .line 141
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "freq ->"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lorg/webrtc/deviceinfo/SystemInfo;->CPUFreq:I

    .line 142
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "mem ->"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lorg/webrtc/deviceinfo/SystemInfo;->TotalMem:I

    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    .line 138
    invoke-static {v0}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 133
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static isInBlackList()Z
    .locals 2

    .prologue
    .line 405
    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "MB860"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "MB855"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "1503-A01"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "Lenovo K30-T"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "OD105"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "OD103"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "Sony Tablet P"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "A500"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/webrtc/deviceinfo/SystemInfo;->ProductModel:Ljava/lang/String;

    const-string/jumbo v1, "F103"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 300
    packed-switch p0, :pswitch_data_0

    .line 308
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isYunOsSystem3()Z
    .locals 1

    .prologue
    .line 150
    sget v0, Lorg/webrtc/deviceinfo/SystemInfo;->IsYunos:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 8
    .param p0, "textToMatch"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    const/16 v7, 0xa

    .line 105
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 107
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 108
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 109
    aget-byte v5, v0, v1

    if-eq v5, v7, :cond_0

    if-nez v1, :cond_3

    .line 110
    :cond_0
    aget-byte v5, v0, v1

    if-ne v5, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 111
    :cond_1
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 112
    sub-int v4, v2, v1

    .line 114
    .local v4, "textIndex":I
    aget-byte v5, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 119
    invoke-static {v0, v2}, Lorg/webrtc/deviceinfo/SystemInfo;->extractValue([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 128
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "textIndex":I
    :goto_2
    return v5

    .line 111
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v4    # "textIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v2    # "j":I
    .end local v4    # "textIndex":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "length":I
    :catch_0
    move-exception v5

    .line 128
    :cond_4
    :goto_3
    const/4 v5, -0x1

    goto :goto_2

    .line 127
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method public static parseNetWorkType(Landroid/net/NetworkInfo;)I
    .locals 5
    .param p0, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x1

    .line 320
    const/4 v1, 0x1

    .line 321
    .local v1, "type":I
    if-nez p0, :cond_0

    .line 358
    :goto_0
    return v2

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 325
    const/4 v1, 0x6

    :cond_1
    :goto_1
    move v2, v1

    .line 358
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/webrtc/deviceinfo/SystemInfo;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 328
    .local v0, "subType":I
    packed-switch v0, :pswitch_data_0

    .line 351
    const/4 v1, 0x4

    .line 353
    goto :goto_1

    .line 334
    :pswitch_0
    const/4 v1, 0x2

    .line 335
    goto :goto_1

    .line 345
    :pswitch_1
    const/4 v1, 0x3

    .line 346
    goto :goto_1

    .line 348
    :pswitch_2
    const/4 v1, 0x5

    .line 349
    goto :goto_1

    .line 353
    .end local v0    # "subType":I
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 354
    const/4 v1, 0x7

    goto :goto_1

    .line 355
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 356
    const/16 v1, 0x8

    goto :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static readCPUinfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 155
    const-string/jumbo v5, ""

    .line 158
    .local v5, "result":Ljava/lang/String;
    const/4 v6, 0x2

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "/system/bin/cat"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "/proc/cpuinfo"

    aput-object v7, v0, v6

    .line 159
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 161
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 162
    .local v3, "process":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 163
    .local v2, "in":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 164
    .local v4, "re":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "re":[B
    :goto_1
    return-object v5

    :catch_0
    move-exception v6

    goto :goto_1
.end method
