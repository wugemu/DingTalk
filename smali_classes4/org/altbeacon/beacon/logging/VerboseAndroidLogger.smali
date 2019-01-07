.class final Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;
.super Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;
.source "VerboseAndroidLogger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 72
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 77
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    return-void
.end method

.method public final varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-void
.end method
