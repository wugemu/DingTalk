.class public Lcom/laiwang/protocol/android/log/TraceLogger;
.super Ljava/lang/Object;
.source "TraceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/log/TraceLogger$a;,
        Lcom/laiwang/protocol/android/log/TraceLogger$Level;
    }
.end annotation


# static fields
.field private static a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

.field private static b:Lcom/alibaba/doraemon/log/FileLogger;

.field private static final c:Ljava/lang/String;

.field private static d:Z

.field private static e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    sput-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .line 30
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->c:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/protocol/android/log/TraceLogger;->d:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method private static a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "level"    # Lcom/laiwang/protocol/android/log/TraceLogger$Level;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/ch;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    if-eqz p2, :cond_0

    .line 175
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 183
    sget-object v4, Lcom/laiwang/protocol/android/log/TraceLogger;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 187
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    :cond_1
    :goto_1
    sget-object v4, Lcom/laiwang/protocol/android/log/TraceLogger;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    .line 193
    :goto_2
    if-eqz v0, :cond_1

    .line 194
    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v4

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v4

    .line 193
    :goto_3
    if-eqz v0, :cond_3

    .line 194
    :try_start_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    :cond_3
    :goto_4
    throw v4

    .line 198
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 192
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v1, :cond_1

    .line 75
    :try_start_0
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/log/FileLogger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    :cond_1
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 98
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_1
    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_2
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->d(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ERROR:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ERROR:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ERROR:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ERROR:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-static {v0, p0, p1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLogFileName(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 65
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/log/FileLogger;->getLogFile(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->c(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->INFO:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->INFO:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 142
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_1
    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->c(Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->INFO:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_2
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->INFO:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/laiwang/protocol/android/log/TraceLogger$Level;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "level"    # Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .prologue
    .line 40
    sget-boolean v2, Lcom/laiwang/protocol/android/log/TraceLogger;->d:Z

    if-eqz v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 42
    :cond_0
    const-class v3, Lcom/laiwang/protocol/android/log/TraceLogger;

    monitor-enter v3

    .line 43
    :try_start_0
    sget-boolean v2, Lcom/laiwang/protocol/android/log/TraceLogger;->d:Z

    if-nez v2, :cond_2

    .line 44
    const/4 v2, 0x1

    sput-boolean v2, Lcom/laiwang/protocol/android/log/TraceLogger;->d:Z

    .line 45
    sput-object p2, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .line 46
    new-instance v2, Lcom/alibaba/doraemon/log/FileLogger;

    const-string/jumbo v4, "lwp_sdk"

    invoke-direct {v2, p1, v4, p0}, Lcom/alibaba/doraemon/log/FileLogger;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    sput-object v2, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/log/FileLogger;->setCachedNumInSDDir(I)V

    .line 48
    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/log/FileLogger;->setCachedNumInAppDir(I)V

    .line 49
    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    if-eqz v2, :cond_2

    .line 50
    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v1, "log":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/laiwang/protocol/android/log/TraceLogger;->b:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v4, v1}, Lcom/alibaba/doraemon/log/FileLogger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v0    # "e":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    .end local v1    # "log":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 57
    :cond_1
    :try_start_3
    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger;->e:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 60
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static setLogLevel(Lcom/laiwang/protocol/android/log/TraceLogger$Level;)V
    .locals 0
    .param p0, "level"    # Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .prologue
    .line 69
    sput-object p0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .line 70
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->WARN:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->WARN:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->DEBUG:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 120
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_1
    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger$a;->b(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger;->a:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v1

    sget-object v2, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->WARN:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_2
    sget-object v1, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->WARN:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Lcom/laiwang/protocol/android/log/TraceLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
