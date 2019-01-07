.class public Lijt;
.super Ljava/lang/Object;
.source "DeviceHWInfo.java"


# static fields
.field static a:I

.field static b:J

.field static c:I

.field static d:Ljava/lang/String;

.field private static final e:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 35
    sput v2, Lijt;->a:I

    .line 36
    const-wide/16 v0, -0x64

    sput-wide v0, Lijt;->b:J

    .line 37
    sput v2, Lijt;->c:I

    .line 38
    const-string/jumbo v0, "-100"

    sput-object v0, Lijt;->d:Ljava/lang/String;

    .line 118
    new-instance v0, Liju;

    invoke-direct {v0}, Liju;-><init>()V

    sput-object v0, Lijt;->e:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 46
    sget v0, Lijt;->c:I

    if-ne v0, v3, :cond_0

    .line 47
    sget v0, Lijt;->c:I

    .line 72
    :goto_0
    return v0

    .line 49
    :cond_0
    sget v0, Lijt;->c:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_4

    .line 50
    const-class v1, Lijt;

    monitor-enter v1

    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 57
    sput v0, Lijt;->c:I

    monitor-exit v1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :cond_1
    :try_start_1
    const-string/jumbo v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Lijt;->a(Ljava/lang/String;)I

    move-result v0

    .line 61
    sput v0, Lijt;->c:I

    if-ne v0, v3, :cond_2

    .line 62
    const-string/jumbo v0, "/sys/devices/system/cpu/present"

    invoke-static {v0}, Lijt;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lijt;->c:I

    .line 64
    :cond_2
    sget v0, Lijt;->c:I

    if-ne v0, v3, :cond_3

    .line 1115
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lijt;->e:Ljava/io/FileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    .line 65
    sput v0, Lijt;->c:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :cond_4
    sget v0, Lijt;->c:I

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    :try_start_3
    sput v0, Lijt;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 82
    const/4 v2, 0x0

    .line 84
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2108
    if-eqz v2, :cond_0

    const-string/jumbo v3, "0-[\\d]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_2

    .line 93
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :cond_1
    :goto_1
    return v0

    .line 2111
    :cond_2
    const/4 v3, 0x2

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 91
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v9, 0x400

    const/16 v8, 0xa

    .line 305
    new-array v3, v9, [B

    .line 307
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 308
    :goto_0
    if-ge v0, v4, :cond_7

    .line 309
    aget-byte v2, v3, v0

    if-eq v2, v8, :cond_0

    if-nez v0, :cond_6

    .line 310
    :cond_0
    aget-byte v2, v3, v0

    if-ne v2, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v2, v0

    .line 311
    :goto_1
    if-ge v2, v4, :cond_6

    .line 312
    sub-int v5, v2, v0

    .line 314
    aget-byte v6, v3, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_6

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2341
    :goto_2
    if-ge v2, v9, :cond_4

    aget-byte v0, v3, v2

    if-eq v0, v8, :cond_4

    .line 2342
    aget-byte v0, v3, v2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2344
    add-int/lit8 v0, v2, 0x1

    .line 2345
    :goto_3
    if-ge v0, v9, :cond_2

    aget-byte v4, v3, v0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2346
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2348
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    sub-int/2addr v0, v2

    invoke-direct {v4, v3, v5, v2, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 2349
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_4
    return v0

    .line 2351
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 319
    goto :goto_4

    .line 311
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 308
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_7
    :goto_5
    move v0, v1

    .line 329
    goto :goto_4

    .line 328
    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)J
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 208
    sget-wide v0, Lijt;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 209
    sget-wide v0, Lijt;->b:J

    .line 248
    :goto_0
    return-wide v0

    .line 211
    :cond_0
    sget-wide v0, Lijt;->b:J

    const-wide/16 v4, -0x64

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 212
    const-class v4, Lijt;

    monitor-enter v4

    .line 215
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 216
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 217
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 220
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v0, Lijt;->b:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_1
    sget-wide v0, Lijt;->b:J

    goto :goto_0

    .line 227
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/proc/meminfo"

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :try_start_3
    const-string/jumbo v0, "MemTotal"

    invoke-static {v0, v5}, Lijt;->a(Ljava/lang/String;Ljava/io/FileInputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 230
    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 233
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    :goto_2
    :try_start_5
    sput-wide v0, Lijt;->b:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    :try_start_6
    sput-wide v0, Lijt;->b:J

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 232
    :catchall_1
    move-exception v0

    .line 233
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 236
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_2

    .line 237
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static b()I
    .locals 10

    .prologue
    const/16 v9, 0x80

    const/4 v2, -0x1

    const/16 v8, -0x64

    const/4 v1, 0x0

    .line 142
    sget v0, Lijt;->a:I

    if-ne v0, v2, :cond_0

    .line 143
    sget v0, Lijt;->a:I

    .line 197
    :goto_0
    return v0

    .line 145
    :cond_0
    sget v0, Lijt;->a:I

    if-ne v0, v8, :cond_5

    .line 146
    const-class v3, Lijt;

    monitor-enter v3

    move v2, v1

    .line 148
    :goto_1
    :try_start_0
    invoke-static {}, Lijt;->a()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/sys/devices/system/cpu/cpu"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const/16 v0, 0x80

    new-array v5, v0, [B

    .line 154
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 156
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move v0, v1

    .line 159
    :goto_2
    aget-byte v4, v5, v0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v0, v9, :cond_1

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    :cond_1
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v0}, Ljava/lang/String;-><init>([BII)V

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lijt;->a:I

    if-le v4, v5, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lijt;->a:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 171
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 175
    :catch_1
    move-exception v0

    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 193
    :catch_2
    move-exception v0

    const/4 v0, -0x1

    :try_start_6
    sput v0, Lijt;->a:I

    .line 195
    :cond_4
    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 197
    :cond_5
    sget v0, Lijt;->a:I

    goto/16 :goto_0

    .line 178
    :cond_6
    :try_start_7
    sget v0, Lijt;->a:I

    if-ne v0, v8, :cond_4

    .line 179
    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/proc/cpuinfo"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 181
    :try_start_8
    const-string/jumbo v0, "cpu MHz"

    invoke-static {v0, v1}, Lijt;->a(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v0

    .line 182
    mul-int/lit16 v0, v0, 0x3e8

    .line 183
    sget v2, Lijt;->a:I

    if-le v0, v2, :cond_7

    sput v0, Lijt;->a:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 186
    :cond_7
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 190
    :catch_3
    move-exception v0

    goto :goto_5

    .line 185
    :catchall_1
    move-exception v0

    .line 186
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 189
    :goto_6
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 195
    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 175
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6
.end method
