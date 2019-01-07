.class public Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
.super Ljava/lang/Object;
.source "VITraceLogger.java"


# static fields
.field private static c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

.field private static d:Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "] "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Throwable;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->d:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 184
    const-string/jumbo v1, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "com.alipay.android.phone.inside.log.api.LoggerFactory"

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    :cond_0
    if-nez v1, :cond_2

    .line 198
    :cond_1
    :goto_0
    return v0

    .line 191
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 192
    const-string/jumbo v3, "TraceLoggerImpl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    sput-object v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->d:Ljava/lang/Object;

    .line 197
    :cond_3
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->d:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    const-string/jumbo v0, "getTraceLogger"

    invoke-static {p0, v0, v1, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->c:Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string/jumbo v0, ""

    .line 156
    :goto_0
    return-object v0

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 142
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 144
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 149
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "debug"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "error"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const-string/jumbo v0, "error"

    .line 1175
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v1, :cond_0

    .line 105
    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const-string/jumbo v0, "error"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "info"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "print"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_0
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "print"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    .line 22
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "verbose"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "warn"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const-string/jumbo v0, "warn"

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
