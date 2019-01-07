.class public Lcom/taobao/artc/utils/ArtcLog;
.super Ljava/lang/Object;
.source "ArtcLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;,
        Lcom/taobao/artc/utils/ArtcLog$Level;
    }
.end annotation


# static fields
.field private static final LOG_BREAK:Ljava/lang/Object;

.field private static artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle; = null

.field private static forcePrintLevel:Lcom/taobao/artc/utils/ArtcLog$Level; = null

.field private static isForcePrintLog:Z = false

.field private static isPrintLog:Z = false

.field private static isUseTlog:Z = false

.field private static final preTag:Ljava/lang/String; = "jartc."

.field private static final webrtcPreTag:Ljava/lang/String; = "nartc"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    const-string/jumbo v0, "|"

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog;->LOG_BREAK:Ljava/lang/Object;

    .line 18
    sput-boolean v1, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog:Z

    .line 19
    sput-boolean v1, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    .line 21
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->D:Lcom/taobao/artc/utils/ArtcLog$Level;

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog;->forcePrintLevel:Lcom/taobao/artc/utils/ArtcLog$Level;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 235
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 236
    const-string/jumbo v2, ""

    .line 267
    :goto_0
    return-object v2

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 240
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    if-eqz p1, :cond_3

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 246
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 250
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "jartc."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 133
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_DEBUG:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Lcom/taobao/artc/api/IArtcLogHandle;->onLogPrint(Lcom/taobao/artc/api/AConstants$ArtcLogLevel;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->D:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 200
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_ERROR:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-interface {v0, v1, v2}, Lcom/taobao/artc/api/IArtcLogHandle;->onLogPrint(Lcom/taobao/artc/api/AConstants$ArtcLogLevel;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->E:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 208
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseTlog()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 153
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_INFO:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {v0, v1, v2}, Lcom/taobao/artc/api/IArtcLogHandle;->onLogPrint(Lcom/taobao/artc/api/AConstants$ArtcLogLevel;Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->E:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 161
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z
    .locals 7
    .param p0, "logLevel"    # Lcom/taobao/artc/utils/ArtcLog$Level;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    sget-boolean v5, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog:Z

    if-nez v5, :cond_0

    .line 110
    :goto_0
    return v4

    .line 90
    :cond_0
    sget-boolean v5, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v5, :cond_3

    .line 91
    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$Level;->L:Lcom/taobao/artc/utils/ArtcLog$Level;

    .line 93
    .local v2, "tlogLevel":Lcom/taobao/artc/utils/ArtcLog$Level;
    :try_start_0
    invoke-static {}, Ljox;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/artc/utils/ArtcLog$Level;->valueOf(Ljava/lang/String;)Lcom/taobao/artc/utils/ArtcLog$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/artc/utils/ArtcLog$Level;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Lcom/taobao/artc/utils/ArtcLog$Level;->ordinal()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v1, v3

    .line 101
    .local v1, "ret":Z
    :goto_2
    invoke-virtual {v2}, Lcom/taobao/artc/utils/ArtcLog$Level;->ordinal()I

    move-result v5

    sget-object v6, Lcom/taobao/artc/utils/ArtcLog;->forcePrintLevel:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-virtual {v6}, Lcom/taobao/artc/utils/ArtcLog$Level;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 102
    sput-boolean v4, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    :goto_3
    move v4, v1

    .line 107
    goto :goto_0

    .line 94
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v4

    .line 100
    goto :goto_2

    .line 104
    .restart local v1    # "ret":Z
    :cond_2
    sput-boolean v3, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    goto :goto_3

    .end local v1    # "ret":Z
    .end local v2    # "tlogLevel":Lcom/taobao/artc/utils/ArtcLog$Level;
    :cond_3
    move v4, v3

    .line 110
    goto :goto_0
.end method

.method public static onArtcLog(ILjava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    invoke-virtual {v1}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->ordinal()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 59
    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_ERROR:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    invoke-virtual {v1}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->ordinal()I

    .line 61
    :cond_0
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->LS_INFO:Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;

    .line 62
    .local v0, "severity":Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;
    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$1;->a:[I

    invoke-virtual {v0}, Lcom/taobao/artc/utils/ArtcLog$LoggingSeverity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 78
    const-string/jumbo v1, "nartc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string/jumbo v1, "nartc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :pswitch_1
    const-string/jumbo v1, "nartc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :pswitch_2
    const-string/jumbo v1, "nartc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :pswitch_3
    const-string/jumbo v1, "nartc"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static setArtcLogCallbackHandle(Lcom/taobao/artc/api/IArtcLogHandle;)V
    .locals 0
    .param p0, "logCallback"    # Lcom/taobao/artc/api/IArtcLogHandle;

    .prologue
    .line 29
    sput-object p0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    .line 30
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0
    .param p0, "printLog"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog:Z

    .line 34
    return-void
.end method

.method public static setUseTlog(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    .line 38
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 114
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_VERBOSE:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Lcom/taobao/artc/api/IArtcLogHandle;->onLogPrint(Lcom/taobao/artc/api/AConstants$ArtcLogLevel;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->V:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 122
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 177
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog;->artcLogCbHandle:Lcom/taobao/artc/api/IArtcLogHandle;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcLogLevel;->ARTC_LOG_WARN:Lcom/taobao/artc/api/AConstants$ArtcLogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v0, v1, v2}, Lcom/taobao/artc/api/IArtcLogHandle;->onLogPrint(Lcom/taobao/artc/api/AConstants$ArtcLogLevel;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->W:Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcLog;->isPrintLog(Lcom/taobao/artc/utils/ArtcLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    sget-boolean v0, Lcom/taobao/artc/utils/ArtcLog;->isForcePrintLog:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p0}, Lcom/taobao/artc/utils/ArtcLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/artc/utils/ArtcLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method
