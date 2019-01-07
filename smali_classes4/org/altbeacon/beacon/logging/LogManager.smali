.class public final Lorg/altbeacon/beacon/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static sLogger:Lorg/altbeacon/beacon/logging/Logger;

.field private static sVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lorg/altbeacon/beacon/logging/Loggers;->warningLogger()Lorg/altbeacon/beacon/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lorg/altbeacon/beacon/logging/LogManager;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 112
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 126
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 193
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 207
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public static getLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 139
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 153
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->i(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lorg/altbeacon/beacon/logging/LogManager;->sVerboseLoggingEnabled:Z

    return v0
.end method

.method public static setLogger(Lorg/altbeacon/beacon/logging/Logger;)V
    .locals 2
    .param p0, "logger"    # Lorg/altbeacon/beacon/logging/Logger;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Logger may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sput-object p0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    .line 44
    return-void
.end method

.method public static setVerboseLoggingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 72
    sput-boolean p0, Lorg/altbeacon/beacon/logging/LogManager;->sVerboseLoggingEnabled:Z

    .line 73
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->v(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 166
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 180
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method
