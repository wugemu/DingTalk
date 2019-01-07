.class public Lilf;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lilf;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Runnable;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lilf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lilf;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lilf;->d:Landroid/content/Context;

    .line 43
    new-instance v0, Lilh;

    invoke-direct {v0, p0}, Lilh;-><init>(Lilf;)V

    iput-object v0, p0, Lilf;->e:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public static a()Lilf;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lilf;->b:Lilf;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    sget-object v0, Lilf;->b:Lilf;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lilf;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lilf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lilf;->b:Lilf;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lilf;

    invoke-direct {v0, p0}, Lilf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lilf;->b:Lilf;

    .line 55
    :cond_0
    sget-object v0, Lilf;->b:Lilf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Lilf;->a()Lilf;

    .line 1093
    const/4 v1, 0x0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-interface {v1}, Liki;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    if-nez p0, :cond_2

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 246
    :cond_2
    if-eqz p0, :cond_0

    .line 247
    instance-of v2, p0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InputChannel is not initialized."

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_3
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    move v0, v1

    .line 255
    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    if-nez p0, :cond_2

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 268
    :cond_2
    if-eqz p0, :cond_0

    .line 269
    instance-of v1, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lilf;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lilf;->f:Z

    .line 71
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lilf;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 72
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lilf;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lilf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    .line 119
    const-string/jumbo v0, "NegligibleThrowable"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 125
    :goto_0
    invoke-static {}, Lika;->a()Likh;

    move-result-object v4

    invoke-interface {v4}, Likh;->f()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    invoke-static {}, Lika;->d()Likq;

    move-result-object v4

    sget-object v5, Lilf;->a:Ljava/lang/String;

    const-string/jumbo v6, "enter uncaughtException."

    invoke-interface {v4, v5, v6}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 132
    invoke-static {}, Lika;->e()Likn;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Likn;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 144
    :goto_1
    :try_start_0
    invoke-static {p2}, Lilf;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lilf;->d:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 148
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 151
    array-length v1, v0

    if-lez v1, :cond_0

    .line 152
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 153
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "totalProportional: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dalvikHeapAlloc: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "totalPss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dalvikPss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "nativePss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "OOMException"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "otherPss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 162
    :cond_0
    :try_start_1
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lijz;->a(Z)V

    .line 163
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lijz;->b(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    .line 173
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {p2}, Lilf;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string/jumbo v0, "com.alipay.android.phone.mobilesdk.apm.memory.MemoryMonitor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "handleDestroyActivities"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 185
    :cond_2
    :goto_3
    :try_start_3
    invoke-static {p2}, Lilf;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const-string/jumbo v0, "com.alipay.mobile.quinox.utils.ThreadDumpUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "logAllThreadsTraces"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 189
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    :try_start_4
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lijz;->a(Z)V

    .line 193
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lijz;->b(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 203
    :cond_3
    :goto_4
    iget-object v0, p0, Lilf;->d:Landroid/content/Context;

    .line 2039
    :try_start_5
    invoke-static {v0}, Lilw;->b(Landroid/content/Context;)Ljava/io/File;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    .line 2040
    if-nez v1, :cond_7

    .line 207
    :goto_5
    :try_start_6
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lijz;->a(Z)V

    .line 208
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lijz;->b(Ljava/lang/String;Z)V

    .line 209
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lijz;->a(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 215
    :goto_6
    invoke-static {p2}, Lilf;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lilf;->d:Landroid/content/Context;

    invoke-static {v0}, Limc;->a(Landroid/content/Context;)V

    .line 232
    :cond_4
    :goto_7
    iget-object v0, p0, Lilf;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5

    .line 234
    :try_start_7
    iget-object v0, p0, Lilf;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 239
    :cond_5
    :goto_8
    return-void

    .line 137
    :cond_6
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, v1}, Lijz;->a(Z)V

    .line 138
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v4, "applog"

    invoke-interface {v0, v4, v1}, Lijz;->b(Ljava/lang/String;Z)V

    .line 139
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    invoke-interface {v0, v1, v2}, Lijz;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2045
    :cond_7
    :try_start_8
    invoke-static {v1}, Lilw;->a(Ljava/io/File;)V

    .line 2048
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_logcat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2049
    const/16 v1, 0xbb8

    invoke-static {v2, v1}, Lilw;->a(Ljava/io/File;I)V

    .line 2052
    invoke-static {v0}, Lilw;->a(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogcatUtil"

    const-string/jumbo v4, "dumpLogcatForException"

    invoke-interface {v1, v2, v4, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 220
    :cond_8
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 222
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 227
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    sget-object v1, Lilf;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uncaughtException: unknown process "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lika;->a()Likh;

    move-result-object v4

    invoke-interface {v4}, Likh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-interface {v0, v1, v2, v3}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :cond_9
    move v0, v2

    move-object v3, p2

    goto/16 :goto_0
.end method
