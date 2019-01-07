.class public Lcom/j256/ormlite/logger/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    }
.end annotation


# static fields
.field private static final a:Lcom/j256/ormlite/logger/Log$Level;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/io/PrintStream;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lcom/j256/ormlite/logger/Log$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 51
    sget-object v3, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sput-object v3, Lcom/j256/ormlite/logger/LocalLog;->a:Lcom/j256/ormlite/logger/Log$Level;

    .line 52
    new-instance v3, Lcom/j256/ormlite/logger/LocalLog$1;

    invoke-direct {v3}, Lcom/j256/ormlite/logger/LocalLog$1;-><init>()V

    sput-object v3, Lcom/j256/ormlite/logger/LocalLog;->b:Ljava/lang/ThreadLocal;

    .line 65
    const-class v3, Lcom/j256/ormlite/logger/LocalLog;

    const-string/jumbo v4, "/ormliteLocalLog.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 66
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/j256/ormlite/logger/LocalLog;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    sput-object v0, Lcom/j256/ormlite/logger/LocalLog;->d:Ljava/util/List;

    .line 73
    const-string/jumbo v3, "com.j256.ormlite.logger.file"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "logPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1122
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v3, Lcom/j256/ormlite/logger/LocalLog;->c:Ljava/io/PrintStream;

    .line 1128
    :goto_0
    return-void

    .line 1125
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/j256/ormlite/logger/LocalLog;->c:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v3

    .line 1127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Log file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/j256/ormlite/logger/LocalLog;->e:Ljava/lang/String;

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "level":Lcom/j256/ormlite/logger/Log$Level;
    sget-object v6, Lcom/j256/ormlite/logger/LocalLog;->d:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 83
    sget-object v6, Lcom/j256/ormlite/logger/LocalLog;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    .line 84
    .local v5, "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    iget-object v6, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    if-eqz v2, :cond_1

    iget-object v6, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->b:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v6}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v6

    invoke-virtual {v2}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 87
    :cond_1
    iget-object v2, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->b:Lcom/j256/ormlite/logger/Log$Level;

    goto :goto_0

    .line 93
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    :cond_2
    if-nez v2, :cond_3

    .line 95
    const-string/jumbo v6, "com.j256.ormlite.logger.level"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "levelName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 97
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->a:Lcom/j256/ormlite/logger/Log$Level;

    .line 114
    .end local v3    # "levelName":Ljava/lang/String;
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/j256/ormlite/logger/LocalLog;->f:Lcom/j256/ormlite/logger/Log$Level;

    .line 115
    return-void

    .line 102
    .restart local v3    # "levelName":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    .local v4, "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :goto_2
    move-object v2, v4

    goto :goto_1

    .end local v4    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :catch_0
    move-exception v6

    .line 106
    :try_start_1
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    goto :goto_2

    .line 107
    .end local v4    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e2":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Level \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' was not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    if-eqz p0, :cond_0

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/j256/ormlite/logger/LocalLog;->b(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 166
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 169
    :cond_0
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IO exception reading the log properties file \'/ormliteLocalLog.properties\': "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 173
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 174
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_0

    .line 184
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 186
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Line is not in the format of \'pattern = level\': "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 192
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    .local v0, "level":Lcom/j256/ormlite/logger/Log$Level;
    new-instance v6, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    invoke-direct {v6, v4, v0}, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;-><init>(Ljava/util/regex/Pattern;Lcom/j256/ormlite/logger/Log$Level;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0    # "level":Lcom/j256/ormlite/logger/Log$Level;
    :catch_0
    move-exception v6

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Level \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v3, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' was not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    return-object v2
.end method

.method private b(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/logger/LocalLog;->a(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 208
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Lcom/j256/ormlite/logger/LocalLog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->c:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    if-eqz p3, :cond_0

    .line 214
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->c:Ljava/io/PrintStream;

    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/logger/LocalLog;->b(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public final a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/logger/LocalLog;->b(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public final a(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/j256/ormlite/logger/LocalLog;->f:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Log$Level;->isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method
