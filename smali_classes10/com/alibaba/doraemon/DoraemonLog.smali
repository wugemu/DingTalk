.class public Lcom/alibaba/doraemon/DoraemonLog;
.super Ljava/lang/Object;
.source "DoraemonLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/DoraemonLog$OutLogger;
    }
.end annotation


# static fields
.field private static final WRITE_TO_FILE_LOG_D:Ljava/lang/String; = "[D]"

.field private static final WRITE_TO_FILE_LOG_E:Ljava/lang/String; = "[E]"

.field private static final WRITE_TO_FILE_LOG_I:Ljava/lang/String; = "[I]"

.field private static final WRITE_TO_FILE_LOG_V:Ljava/lang/String; = "[V]"

.field private static final WRITE_TO_FILE_LOG_W:Ljava/lang/String; = "[W]"

.field private static sLogLevel:I

.field private static sLogger:Lcom/alibaba/doraemon/Logger;

.field private static sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "doraemon"

    invoke-static {v0}, Lcom/alibaba/doraemon/Logger;->getLogger(Ljava/lang/String;)Lcom/alibaba/doraemon/Logger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    .line 30
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 31
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    .line 42
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 43
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 76
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 87
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static outLogDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/DoraemonLog$OutLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static outLogError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/DoraemonLog$OutLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setOutLogger(Lcom/alibaba/doraemon/DoraemonLog$OutLogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    .prologue
    .line 161
    sput-object p0, Lcom/alibaba/doraemon/DoraemonLog;->sOutLogger:Lcom/alibaba/doraemon/DoraemonLog$OutLogger;

    .line 162
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 109
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    sget v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/doraemon/Logger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    sget-object v0, Lcom/alibaba/doraemon/DoraemonLog;->sLogger:Lcom/alibaba/doraemon/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/Logger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
