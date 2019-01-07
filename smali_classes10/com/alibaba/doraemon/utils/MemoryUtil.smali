.class public Lcom/alibaba/doraemon/utils/MemoryUtil;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreeAndTotalMem()Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getMemInfo()[J

    move-result-object v0

    .line 18
    .local v0, "arrayOfLong":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFreeMem()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getMemInfo()[J

    move-result-object v0

    .line 24
    .local v0, "arrayOfLong":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x2

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeapDalvik()[J
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 29
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 30
    .local v0, "arrayOfLong1":[J
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 31
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 33
    return-object v0
.end method

.method public static getHeapNative()[J
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 37
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 38
    .local v0, "arrayOfLong":[J
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    shr-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 39
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    shr-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 40
    return-object v0
.end method

.method public static getMemInfo()[J
    .locals 13

    .prologue
    const/4 v12, 0x4

    .line 44
    new-array v0, v12, [J

    .line 46
    .local v0, "arrayOfLong1":[J
    :try_start_0
    const-string/jumbo v7, "android.os.Process"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "readProcLines"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, [Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, [J

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 49
    .local v6, "localMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/Object;

    .line 50
    .local v2, "arrayOfObject":[Ljava/lang/Object;
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "MemTotal:"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "MemFree:"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "Buffers:"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "Cached:"

    aput-object v8, v3, v7

    .line 51
    .local v3, "arrayOfString":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v1, v7, [J

    .line 52
    .local v1, "arrayOfLong2":[J
    const/4 v7, 0x0

    const-wide/16 v8, 0x1e

    aput-wide v8, v1, v7

    .line 53
    const/4 v7, 0x1

    const-wide/16 v8, -0x1e

    aput-wide v8, v1, v7

    .line 54
    const/4 v7, 0x0

    const-string/jumbo v8, "/proc/meminfo"

    aput-object v8, v2, v7

    .line 55
    const/4 v7, 0x1

    aput-object v3, v2, v7

    .line 56
    const/4 v7, 0x2

    aput-object v1, v2, v7

    .line 57
    if-eqz v6, :cond_0

    .line 58
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_0

    .line 60
    aget-wide v8, v1, v5

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    aput-wide v8, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "arrayOfLong2":[J
    .end local v2    # "arrayOfObject":[Ljava/lang/Object;
    .end local v3    # "arrayOfString":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "localMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static getPSS(Landroid/app/Application;I)[J
    .locals 9
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "paramInt"    # I

    .prologue
    const/4 v8, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const/4 v3, 0x3

    new-array v1, v3, [J

    .line 73
    .local v1, "arrayOfLong":[J
    if-ltz p1, :cond_0

    .line 74
    new-array v0, v7, [I

    aput p1, v0, v6

    .line 75
    .local v0, "arrayOfInt":[I
    const-string/jumbo v3, "activity"

    .line 76
    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 77
    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    aget-object v2, v3, v6

    .line 78
    .local v2, "localMemoryInfo":Landroid/os/Debug$MemoryInfo;
    iget v3, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    int-to-long v4, v3

    aput-wide v4, v1, v6

    .line 79
    iget v3, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    int-to-long v4, v3

    aput-wide v4, v1, v7

    .line 80
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v8

    .line 86
    .end local v0    # "arrayOfInt":[I
    .end local v2    # "localMemoryInfo":Landroid/os/Debug$MemoryInfo;
    :goto_0
    return-object v1

    .line 83
    :cond_0
    aput-wide v4, v1, v6

    .line 84
    aput-wide v4, v1, v7

    .line 85
    aput-wide v4, v1, v8

    goto :goto_0
.end method

.method public static getPrivDirty(Landroid/app/Application;I)[J
    .locals 6
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "paramInt"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const-string/jumbo v2, "activity"

    .line 91
    invoke-virtual {p0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-array v3, v5, [I

    aput p1, v3, v4

    .line 92
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    aget-object v1, v2, v4

    .line 93
    .local v1, "localMemoryInfo":Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x3

    new-array v0, v2, [J

    .line 94
    .local v0, "arrayOfLong":[J
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    int-to-long v2, v2

    aput-wide v2, v0, v4

    .line 95
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    int-to-long v2, v2

    aput-wide v2, v0, v5

    .line 96
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v0, v2

    .line 97
    return-object v0
.end method

.method public static getTotalMem()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getMemInfo()[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVM()[J
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 105
    const/4 v1, 0x5

    new-array v0, v1, [J

    .line 106
    .local v0, "arrayOfLong":[J
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 108
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 109
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 110
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    shr-long/2addr v2, v6

    aput-wide v2, v0, v1

    .line 111
    const/4 v1, 0x4

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 112
    return-object v0
.end method

.method public static trans2FreeAndTotalMem([J)Ljava/lang/String;
    .locals 6
    .param p0, "paramArrayOfLong"    # [J

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    const/4 v1, 0x2

    aget-wide v4, p0, v1

    add-long/2addr v2, v4

    const/4 v1, 0x3

    aget-wide v4, p0, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "M/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
