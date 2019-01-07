.class public Lcom/ta/audid/utils/UtdidLogger;
.super Ljava/lang/Object;
.source "UtdidLogger.java"


# static fields
.field private static final TAG_LOG_PREFIX:Ljava/lang/String; = "Utdid."

.field private static isDebug:Z

.field private static isSDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    .line 16
    sput-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isSDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 147
    const-string/jumbo v4, ""

    .line 161
    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 149
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "[%s] "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez p0, :cond_1

    const-string/jumbo p0, "-"

    .end local p0    # "msg":Ljava/lang/String;
    :cond_1
    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 153
    .local v1, "count":I
    const/4 v3, 0x0

    .line 154
    .local v3, "index":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    if-ge v3, v1, :cond_2

    .line 158
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 161
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 122
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 123
    const-string/jumbo v3, ""

    .line 142
    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 126
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[%s] "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p0, :cond_1

    const-string/jumbo p0, "-"

    .end local p0    # "msg":Ljava/lang/String;
    :cond_1
    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p1, :cond_4

    .line 129
    array-length v2, p1

    .line 131
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 132
    aget-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Lcom/ta/audid/utils/UtdidLogger;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    .line 135
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_3
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_4

    .line 139
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static buildLogTag()Ljava/lang/String;
    .locals 10

    .prologue
    .line 104
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->getStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 105
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v0, ""

    .line 106
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 107
    .local v3, "method":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 111
    .local v2, "index":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "pid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "tid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Utdid."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 31
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 55
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 91
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 85
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    aput-object p0, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/Object;
    :cond_1
    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStackTrace()Ljava/lang/StackTraceElement;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 167
    .local v1, "sts":[Ljava/lang/StackTraceElement;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 168
    .local v0, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/ta/audid/utils/UtdidLogger;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 181
    .end local v0    # "st":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v0

    .line 167
    .restart local v0    # "st":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "st":Ljava/lang/StackTraceElement;
    :cond_1
    move-object v0, v2

    .line 179
    goto :goto_1

    .line 181
    :catch_0
    move-exception v3

    move-object v0, v2

    goto :goto_1
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 67
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    return v0
.end method

.method public static varargs sd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 61
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isSDebug:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 2
    .param p0, "isDebug"    # Z

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDebug:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    sput-boolean p0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    .line 21
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 79
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 73
    sget-boolean v0, Lcom/ta/audid/utils/UtdidLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->buildLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/ta/audid/utils/UtdidLogger;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method
