.class public Lorg/webrtc/ali/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/Logging$Severity;,
        Lorg/webrtc/ali/Logging$TraceLevel;,
        Lorg/webrtc/ali/Logging$NativeLibStatus;
    }
.end annotation


# static fields
.field private static final fallbackLogger:Ljava/util/logging/Logger;

.field private static volatile loggingEnabled:Z

.field private static volatile nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;

.field private static volatile tracingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/webrtc/ali/Logging;->createFallbackLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    .line 34
    sget-object v0, Lorg/webrtc/ali/Logging$NativeLibStatus;->UNINITIALIZED:Lorg/webrtc/ali/Logging$NativeLibStatus;

    sput-object v0, Lorg/webrtc/ali/Logging;->nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFallbackLogger()Ljava/util/logging/Logger;
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v1, "org.webrtc.Logging"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 38
    .local v0, "fallbackLogger":Ljava/util/logging/Logger;
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 39
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_INFO:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_ERROR:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_ERROR:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_ERROR:Lorg/webrtc/ali/Logging$Severity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_ERROR:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {p2}, Lorg/webrtc/ali/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static enableLogThreads()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lorg/webrtc/ali/Logging;->loadNativeLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "Cannot enable log thread because native lib not loaded."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/Logging;->nativeEnableLogThreads()V

    goto :goto_0
.end method

.method public static enableLogTimeStamps()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lorg/webrtc/ali/Logging;->loadNativeLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "Cannot enable log timestamps because native lib not loaded."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/Logging;->nativeEnableLogTimeStamps()V

    goto :goto_0
.end method

.method public static declared-synchronized enableLogToDebugOutput(Lorg/webrtc/ali/Logging$Severity;)V
    .locals 4
    .param p0, "severity"    # Lorg/webrtc/ali/Logging$Severity;

    .prologue
    .line 124
    const-class v1, Lorg/webrtc/ali/Logging;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/webrtc/ali/Logging;->loadNativeLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "Cannot enable logging because native lib not loaded."

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit v1

    return-void

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/webrtc/ali/Logging$Severity;->ordinal()I

    move-result v0

    invoke-static {v0}, Lorg/webrtc/ali/Logging;->nativeEnableLogToDebugOutput(I)V

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lorg/webrtc/ali/Logging;->loggingEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enableTracing(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/webrtc/ali/Logging$TraceLevel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "levels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/webrtc/ali/Logging$TraceLevel;>;"
    const-class v3, Lorg/webrtc/ali/Logging;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/webrtc/ali/Logging;->loadNativeLibrary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    sget-object v2, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v5, "Cannot enable tracing because native lib not loaded."

    invoke-virtual {v2, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 109
    :cond_1
    :try_start_1
    sget-boolean v2, Lorg/webrtc/ali/Logging;->tracingEnabled:Z

    if-nez v2, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "nativeLevel":I
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/Logging$TraceLevel;

    .line 114
    .local v0, "level":Lorg/webrtc/ali/Logging$TraceLevel;
    iget v4, v0, Lorg/webrtc/ali/Logging$TraceLevel;->level:I

    or-int/2addr v1, v4

    .line 115
    goto :goto_1

    .line 116
    .end local v0    # "level":Lorg/webrtc/ali/Logging$TraceLevel;
    :cond_2
    invoke-static {p0, v1}, Lorg/webrtc/ali/Logging;->nativeEnableTracing(Ljava/lang/String;I)V

    .line 117
    const/4 v2, 0x1

    sput-boolean v2, Lorg/webrtc/ali/Logging;->tracingEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v1    # "nativeLevel":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const-string/jumbo v2, ""

    .line 193
    :goto_0
    return-object v2

    .line 190
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 191
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 192
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static loadNativeLibrary()Z
    .locals 4

    .prologue
    .line 43
    sget-object v1, Lorg/webrtc/ali/Logging;->nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;

    sget-object v2, Lorg/webrtc/ali/Logging$NativeLibStatus;->UNINITIALIZED:Lorg/webrtc/ali/Logging$NativeLibStatus;

    if-ne v1, v2, :cond_0

    .line 47
    :try_start_0
    sget-object v1, Lorg/webrtc/ali/Logging$NativeLibStatus;->FAILED:Lorg/webrtc/ali/Logging$NativeLibStatus;

    sput-object v1, Lorg/webrtc/ali/Logging;->nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "t":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    sget-object v1, Lorg/webrtc/ali/Logging;->nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;

    sget-object v2, Lorg/webrtc/ali/Logging$NativeLibStatus;->LOADED:Lorg/webrtc/ali/Logging$NativeLibStatus;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 48
    .end local v0    # "t":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0    # "t":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lorg/webrtc/ali/Logging$NativeLibStatus;->FAILED:Lorg/webrtc/ali/Logging$NativeLibStatus;

    sput-object v1, Lorg/webrtc/ali/Logging;->nativeLibStatus:Lorg/webrtc/ali/Logging$NativeLibStatus;

    .line 50
    sget-object v1, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "Failed to load jingle_peerconnection_so: "

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "severity"    # Lorg/webrtc/ali/Logging$Severity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-boolean v1, Lorg/webrtc/ali/Logging;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/webrtc/ali/Logging$Severity;->ordinal()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/webrtc/ali/Logging;->nativeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v1, Lorg/webrtc/ali/Logging$1;->$SwitchMap$org$webrtc$ali$Logging$Severity:[I

    invoke-virtual {p0}, Lorg/webrtc/ali/Logging$Severity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 154
    .local v0, "level":Ljava/util/logging/Level;
    :goto_1
    sget-object v1, Lorg/webrtc/ali/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "level":Ljava/util/logging/Level;
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 143
    .restart local v0    # "level":Ljava/util/logging/Level;
    goto :goto_1

    .line 145
    .end local v0    # "level":Ljava/util/logging/Level;
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 146
    .restart local v0    # "level":Ljava/util/logging/Level;
    goto :goto_1

    .line 148
    .end local v0    # "level":Ljava/util/logging/Level;
    :pswitch_2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 149
    .restart local v0    # "level":Ljava/util/logging/Level;
    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native nativeEnableLogThreads()V
.end method

.method private static native nativeEnableLogTimeStamps()V
.end method

.method private static native nativeEnableLogToDebugOutput(I)V
.end method

.method private static native nativeEnableTracing(Ljava/lang/String;I)V
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_VERBOSE:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_WARNING:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_WARNING:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_WARNING:Lorg/webrtc/ali/Logging$Severity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lorg/webrtc/ali/Logging$Severity;->LS_WARNING:Lorg/webrtc/ali/Logging$Severity;

    invoke-static {p2}, Lorg/webrtc/ali/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/webrtc/ali/Logging;->log(Lorg/webrtc/ali/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
