.class public final Ljox;
.super Ljava/lang/Object;
.source "AdapterForTLog.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Ljox;->a:Z

    .line 18
    :try_start_0
    const-string/jumbo v0, "com.taobao.tao.log.TLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Ljox;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    sput-boolean v1, Ljox;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-boolean v2, Ljox;->a:Z

    if-eqz v2, :cond_2

    .line 221
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getTLogControler()Lcom/taobao/tao/log/ITLogController;

    move-result-object v0

    .line 222
    .local v0, "controller":Lcom/taobao/tao/log/ITLogController;
    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0, p0}, Lcom/taobao/tao/log/ITLogController;->getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v1

    .line 224
    .local v1, "level":Lcom/taobao/tao/log/LogLevel;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .end local v0    # "controller":Lcom/taobao/tao/log/ITLogController;
    .end local v1    # "level":Lcom/taobao/tao/log/LogLevel;
    :goto_0
    return-object v2

    .line 227
    .restart local v0    # "controller":Lcom/taobao/tao/log/ITLogController;
    .restart local v1    # "level":Lcom/taobao/tao/log/LogLevel;
    :cond_0
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v2}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 230
    .end local v1    # "level":Lcom/taobao/tao/log/LogLevel;
    :cond_1
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v2}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 233
    .end local v0    # "controller":Lcom/taobao/tao/log/ITLogController;
    :cond_2
    const-string/jumbo v2, "L"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Ljox;->a:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Ljox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-boolean v0, Ljox;->a:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "clientTraceId"    # Ljava/lang/String;
    .param p1, "serverTraceId"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-boolean v0, Ljox;->a:Z

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
