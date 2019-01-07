.class public Lmtopsdk/common/util/TBSdkLog;
.super Ljava/lang/Object;
.source "TBSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/common/util/TBSdkLog$LogEnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TBSdkLog"

.field private static logEnabaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/common/util/TBSdkLog$LogEnable;",
            ">;"
        }
    .end annotation
.end field

.field private static logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field private static printLog:Z

.field private static tLogEnabled:Z


# instance fields
.field private lTag:Ljava/lang/String;

.field private logBuf:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 13
    sput-boolean v4, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 14
    sput-boolean v4, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    .line 15
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    sput-object v4, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 16
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    .line 33
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->values()[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    move-result-object v0

    .local v0, "arr$":[Lmtopsdk/common/util/TBSdkLog$LogEnable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 34
    .local v3, "logEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    sget-object v4, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->getLogEnable()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v3    # "logEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 190
    iput-object p1, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 192
    return-void
.end method

.method private static varargs append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seqNo"    # Ljava/lang/String;
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 171
    const-string/jumbo v2, "[seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    if-eqz p1, :cond_2

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 175
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 177
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 66
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 68
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 146
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 148
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 160
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 162
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 93
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # [Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z
    .locals 3
    .param p0, "logEnable"    # Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .prologue
    .line 266
    sget-boolean v1, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v1, :cond_0

    .line 267
    sget-object v1, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    invoke-static {}, Ljox;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 268
    .local v0, "tLogEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    if-eqz v0, :cond_0

    sget-object v1, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v1}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 269
    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V

    .line 272
    .end local v0    # "tLogEnable":Lmtopsdk/common/util/TBSdkLog$LogEnable;
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v1

    sget-object v2, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v2}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrintLog()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    return v0
.end method

.method public static logTraceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "clientTraceId"    # Ljava/lang/String;
    .param p1, "serverTraceId"    # Ljava/lang/String;

    .prologue
    .line 278
    :try_start_0
    invoke-static {p0, p1}, Ljox;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    const-string/jumbo v0, "mtopsdk.TBSdkLog"

    const-string/jumbo v1, "[logTraceId] call tlog_adapter AdapterForTLog.traceLog error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V
    .locals 2
    .param p0, "logEnable"    # Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    sput-object p0, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setLogEnable] logEnable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 2
    .param p0, "printLog"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setPrintLog] printLog="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method public static setTLogEnabled(Z)V
    .locals 2
    .param p0, "tLogEnabled"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setTLogEnabled] tLogEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 118
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljox;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 120
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 132
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 134
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 195
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    return-object p0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 205
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 255
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 215
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 225
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 235
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
