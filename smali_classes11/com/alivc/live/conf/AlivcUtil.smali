.class public Lcom/alivc/live/conf/AlivcUtil;
.super Ljava/lang/Object;
.source "AlivcUtil.java"


# static fields
.field public static final NETWORK_CLASS_2_G:I = 0x2

.field public static final NETWORK_CLASS_3_G:I = 0x3

.field public static final NETWORK_CLASS_4_G:I = 0x4

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppCpuTime()J
    .locals 12

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 92
    .local v2, "cpuInfos":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 93
    .local v5, "pid":I
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/proc/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/stat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x3e8

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 95
    .local v6, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "load":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 97
    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .end local v4    # "load":Ljava/lang/String;
    .end local v5    # "pid":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_0
    const/16 v7, 0xd

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v7, 0xe

    aget-object v7, v2, v7

    .line 104
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v7, 0xf

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v7, 0x10

    aget-object v7, v2, v7

    .line 105
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v0, v8, v10

    .line 106
    .local v0, "appCpuTime":J
    return-wide v0

    .line 99
    .end local v0    # "appCpuTime":J
    :catch_0
    move-exception v3

    .line 101
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetWorkClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 163
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 186
    const-string/jumbo v1, "UNKNOWN"

    :goto_0
    return-object v1

    .line 169
    :pswitch_0
    const-string/jumbo v1, "2G"

    goto :goto_0

    .line 180
    :pswitch_1
    const-string/jumbo v1, "3G"

    goto :goto_0

    .line 183
    :pswitch_2
    const-string/jumbo v1, "4G"

    goto :goto_0

    .line 163
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

.method public static getNetWorkStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    const-string/jumbo v1, "UNKNOWN"

    .line 193
    .local v1, "netWorkType":Ljava/lang/String;
    const-string/jumbo v5, "connectivity"

    .line 194
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 195
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 210
    .end local v1    # "netWorkType":Ljava/lang/String;
    .local v2, "netWorkType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 198
    .end local v2    # "netWorkType":Ljava/lang/String;
    .restart local v1    # "netWorkType":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 200
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 203
    .local v4, "type":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 204
    const-string/jumbo v1, "WiFi"

    .end local v4    # "type":I
    :cond_1
    :goto_1
    move-object v2, v1

    .line 210
    .end local v1    # "netWorkType":Ljava/lang/String;
    .restart local v2    # "netWorkType":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v2    # "netWorkType":Ljava/lang/String;
    .restart local v1    # "netWorkType":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_2
    if-nez v4, :cond_1

    .line 206
    invoke-static {p0}, Lcom/alivc/live/conf/AlivcUtil;->getNetWorkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getOperators(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const-string/jumbo v1, "UNKNOWN"

    .line 216
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 217
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    move-object v2, v1

    .line 229
    .end local v1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 220
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v4, "46000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "46002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "46007"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    :cond_1
    const-string/jumbo v1, "China Mobile"

    :cond_2
    :goto_1
    move-object v2, v1

    .line 229
    .end local v1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "46001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "46006"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    :cond_4
    const-string/jumbo v1, "China Unicom"

    goto :goto_1

    .line 226
    :cond_5
    const-string/jumbo v4, "46003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "46005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    :cond_6
    const-string/jumbo v1, "China Telecom"

    goto :goto_1
.end method

.method public static getProcessCpuRate()F
    .locals 8

    .prologue
    .line 48
    invoke-static {}, Lcom/alivc/live/conf/AlivcUtil;->getTotalCpuTime()J

    move-result-wide v6

    long-to-float v3, v6

    .line 49
    .local v3, "totalCpuTime1":F
    invoke-static {}, Lcom/alivc/live/conf/AlivcUtil;->getAppCpuTime()J

    move-result-wide v6

    long-to-float v1, v6

    .line 52
    .local v1, "processCpuTime1":F
    const-wide/16 v6, 0x168

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-static {}, Lcom/alivc/live/conf/AlivcUtil;->getTotalCpuTime()J

    move-result-wide v6

    long-to-float v4, v6

    .line 59
    .local v4, "totalCpuTime2":F
    invoke-static {}, Lcom/alivc/live/conf/AlivcUtil;->getAppCpuTime()J

    move-result-wide v6

    long-to-float v2, v6

    .line 61
    .local v2, "processCpuTime2":F
    const/high16 v5, 0x42c80000    # 100.0f

    sub-float v6, v2, v1

    mul-float/2addr v5, v6

    sub-float v6, v4, v3

    div-float v0, v5, v6

    .line 64
    .local v0, "cpuRate":F
    return v0

    .end local v0    # "cpuRate":F
    .end local v2    # "processCpuTime2":F
    .end local v4    # "totalCpuTime2":F
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getRunningAppProcessInfo(Landroid/content/Context;)F
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "memorySize":F
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 116
    .local v6, "runningAppProcessesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 119
    .local v5, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 122
    .local v3, "pid":I
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 125
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 128
    const/4 v8, 0x1

    new-array v4, v8, [I

    aput v3, v4, v9

    .line 130
    .local v4, "pids":[I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 131
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 133
    .local v1, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    aget-object v7, v1, v9

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v7

    int-to-float v2, v7

    .line 139
    .end local v1    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v3    # "pid":I
    .end local v4    # "pids":[I
    .end local v5    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v2
.end method

.method private static getTotalCpuTime()J
    .locals 10

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 71
    .local v0, "cpuInfos":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string/jumbo v8, "/proc/stat"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x3e8

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 73
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "load":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 75
    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x3

    aget-object v8, v0, v8

    .line 82
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x6

    aget-object v8, v0, v8

    .line 83
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x5

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x7

    aget-object v8, v0, v8

    .line 84
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v8, 0x8

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long v4, v6, v8

    .line 85
    .local v4, "totalCpu":J
    return-wide v4

    .line 77
    .end local v4    # "totalCpu":J
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v2, v3

    check-cast v2, Landroid/view/WindowManager;

    .line 154
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 155
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 157
    .local v1, "mScreenHeight":I
    return v1
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v2, v3

    check-cast v2, Landroid/view/WindowManager;

    .line 145
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 146
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 147
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 148
    .local v1, "mScreenWidth":I
    return v1
.end method
