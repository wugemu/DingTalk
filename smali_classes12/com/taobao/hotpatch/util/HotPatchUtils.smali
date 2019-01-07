.class public Lcom/taobao/hotpatch/util/HotPatchUtils;
.super Ljava/lang/Object;
.source "HotPatchUtils.java"


# static fields
.field private static blackLists:[Ljava/lang/String;

.field private static isCheckedDeviceSupport:Z

.field private static isDeviceSupportable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 16
    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    .line 21
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SM-N900"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "SM-N9002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SM-N9005"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SM-N9006"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "SM-N9008"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SM-N9009"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SM-I9500"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SM-I9502"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SM-I9505"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SM-I9508"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SM-I959"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "SM-G9006V"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SM-G9009D"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SM-G9008V"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SM-G9098"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->blackLists:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    const-string/jumbo v5, ""

    .line 187
    :goto_0
    return-object v5

    .line 168
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v4, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 178
    .local v3, "msgs":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 179
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0

    .line 181
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 182
    const-string/jumbo v5, "\tat  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static isARTMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v4, :cond_1

    .line 43
    .local v0, "vmVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 39
    .end local v0    # "vmVersion":Ljava/lang/String;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_4

    .line 40
    :cond_2
    const-string/jumbo v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .restart local v0    # "vmVersion":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "vmVersion":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public static isDalvikMode()Z
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    .line 32
    .local v0, "vmVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 28
    .end local v0    # "vmVersion":Ljava/lang/String;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-eq v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v5, :cond_4

    .line 29
    :cond_2
    const-string/jumbo v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .restart local v0    # "vmVersion":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "vmVersion":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 32
    goto :goto_0
.end method

.method public static declared-synchronized isDeviceSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-class v1, Lcom/taobao/hotpatch/util/HotPatchUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    if-eqz v0, :cond_0

    .line 130
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "device support is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    :goto_0
    monitor-exit v1

    return v0

    .line 132
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isInBlackList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "device support is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "checked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    .line 141
    sget-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "device support is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupportable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/hotpatch/util/HotPatchUtils;->isCheckedDeviceSupport:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isInBlackList()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isLimitedDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLimitedDevices()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 111
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 112
    .local v3, "model":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .local v4, "sdkVersion":I
    const/16 v7, 0x15

    if-ne v4, v7, :cond_0

    .line 115
    sget-object v0, Lcom/taobao/hotpatch/util/HotPatchUtils;->blackLists:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 116
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    const/4 v6, 0x1

    .line 122
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_0
    return v6

    .line 115
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isX86CPU()Z
    .locals 8

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 68
    .local v5, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 69
    .local v3, "ir":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 71
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string/jumbo v7, "getprop ro.product.cpu.abi"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 72
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .local v4, "ir":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "abi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v6, "x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 89
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 94
    :goto_1
    if-eqz v5, :cond_0

    .line 96
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 98
    :cond_0
    :goto_2
    const/4 v6, 0x1

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 102
    .end local v0    # "abi":Ljava/lang/String;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :goto_3
    return v6

    .line 82
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 89
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 94
    :goto_5
    if-eqz v5, :cond_8

    .line 96
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 102
    .end local v0    # "abi":Ljava/lang/String;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2
    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    .line 98
    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 80
    .end local v0    # "abi":Ljava/lang/String;
    :catch_1
    move-exception v6

    :goto_7
    if-eqz v1, :cond_3

    .line 82
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 87
    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    .line 89
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 94
    :cond_4
    :goto_9
    if-eqz v5, :cond_2

    .line 96
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .line 98
    :catch_2
    move-exception v6

    goto :goto_6

    .line 80
    :catchall_0
    move-exception v6

    :goto_a
    if-eqz v1, :cond_5

    .line 82
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 87
    :cond_5
    :goto_b
    if-eqz v3, :cond_6

    .line 89
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 94
    :cond_6
    :goto_c
    if-eqz v5, :cond_7

    .line 96
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 98
    :cond_7
    :goto_d
    throw v6

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_4

    :catch_7
    move-exception v6

    goto :goto_5

    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v6

    goto :goto_8

    :catch_9
    move-exception v6

    goto :goto_9

    :catch_a
    move-exception v7

    goto :goto_b

    :catch_b
    move-exception v7

    goto :goto_c

    :catch_c
    move-exception v7

    goto :goto_d

    .line 80
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_a

    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v6

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v1    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "ir":Ljava/io/InputStreamReader;
    :cond_8
    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    goto :goto_6
.end method

.method private static isYunOS()Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "vmVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "vmName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 152
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    .line 161
    :goto_1
    return v4

    :cond_2
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    .line 157
    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_0
.end method
