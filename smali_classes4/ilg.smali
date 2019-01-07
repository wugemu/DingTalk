.class public final Lilg;
.super Ljava/lang/Object;
.source "TraceLoggerImpl.java"

# interfaces
.implements Likq;


# instance fields
.field private a:Lijz;

.field private b:Z

.field private c:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {p1}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    .line 21
    iput-object p1, p0, Lilg;->a:Lijz;

    .line 22
    invoke-static {v0}, Lima;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lilg;->b:Z

    .line 23
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lilg;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lilg;->c:Ljava/lang/StringBuffer;

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lilg;->c:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object v0, p0, Lilg;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget-object v0, p0, Lilg;->c:Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lilg;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lilg;->c:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 165
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-boolean v0, p0, Lilg;->b:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p2, v2}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lilg;->a:Lijz;

    invoke-interface {v1, v0}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 56
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    invoke-static {p3}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lilg;->b:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, p2, v0}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lilg;->a:Lijz;

    invoke-interface {v0, v1}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-static {p2}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lilg;->b:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-direct {p0, v0, v3}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lilg;->a:Lijz;

    invoke-interface {v0, v1}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-boolean v0, p0, Lilg;->b:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p2, v2}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lilg;->a:Lijz;

    invoke-interface {v1, v0}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 34
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    invoke-static {p3}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-boolean v1, p0, Lilg;->b:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0, p2, v0}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lilg;->a:Lijz;

    invoke-interface {v0, v1}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 130
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {p2}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-boolean v1, p0, Lilg;->b:Z

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0, v0, v3}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lilg;->a:Lijz;

    invoke-interface {v0, v1}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 117
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-boolean v0, p0, Lilg;->b:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p2, v2}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lilg;->a:Lijz;

    invoke-interface {v1, v0}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 45
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-boolean v0, p0, Lilg;->b:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p2, v2}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lilg;->a:Lijz;

    invoke-interface {v1, v0}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 67
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-boolean v0, p0, Lilg;->b:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p2, v2}, Lilg;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lilg;->a:Lijz;

    invoke-interface {v1, v0}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 104
    return-void
.end method
