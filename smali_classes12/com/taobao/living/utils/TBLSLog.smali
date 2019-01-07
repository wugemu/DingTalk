.class public Lcom/taobao/living/utils/TBLSLog;
.super Ljava/lang/Object;
.source "TBLSLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;,
        Lcom/taobao/living/utils/TBLSLog$Level;
    }
.end annotation


# static fields
.field private static final LOG_BREAK:Ljava/lang/Object;

.field private static isPrintLog:Z = false

.field private static isUseTlog:Z = false

.field private static final preTag:Ljava/lang/String; = "jtbls."

.field private static final webrtcPreTag:Ljava/lang/String; = "ntbls"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "|"

    sput-object v0, Lcom/taobao/living/utils/TBLSLog;->LOG_BREAK:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isPrintLog:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static varargs buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 158
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 159
    const-string/jumbo v2, ""

    .line 190
    :goto_0
    return-object v2

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 163
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    if-eqz p1, :cond_3

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 169
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lcom/taobao/living/utils/TBLSLog;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_3

    .line 173
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
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
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "jtbls."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 93
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$Level;->D:Lcom/taobao/living/utils/TBLSLog$Level;

    invoke-static {v0}, Lcom/taobao/living/utils/TBLSLog;->isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 132
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$Level;->E:Lcom/taobao/living/utils/TBLSLog$Level;

    invoke-static {v0}, Lcom/taobao/living/utils/TBLSLog;->isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 149
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
    .line 32
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 103
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$Level;->I:Lcom/taobao/living/utils/TBLSLog$Level;

    invoke-static {v0}, Lcom/taobao/living/utils/TBLSLog;->isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z
    .locals 6
    .param p0, "logLevel"    # Lcom/taobao/living/utils/TBLSLog$Level;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    sget-boolean v4, Lcom/taobao/living/utils/TBLSLog;->isPrintLog:Z

    if-nez v4, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    sget-boolean v4, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v4, :cond_2

    .line 71
    sget-object v1, Lcom/taobao/living/utils/TBLSLog$Level;->L:Lcom/taobao/living/utils/TBLSLog$Level;

    .line 73
    .local v1, "tlogLevel":Lcom/taobao/living/utils/TBLSLog$Level;
    :try_start_0
    invoke-static {}, Ljox;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/living/utils/TBLSLog$Level;->valueOf(Ljava/lang/String;)Lcom/taobao/living/utils/TBLSLog$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/living/utils/TBLSLog$Level;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/taobao/living/utils/TBLSLog$Level;->ordinal()I

    move-result v5

    if-lt v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "tlogLevel":Lcom/taobao/living/utils/TBLSLog$Level;
    :cond_2
    move v2, v3

    .line 79
    goto :goto_0
.end method

.method public static onTBLSLog(ILjava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-static {}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->values()[Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;

    move-result-object v1

    aget-object v0, v1, p0

    .line 47
    .local v0, "severity":Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;
    sget-object v1, Lcom/taobao/living/utils/TBLSLog$1;->a:[I

    invoke-virtual {v0}, Lcom/taobao/living/utils/TBLSLog$LoggingSeverity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string/jumbo v1, "ntbls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/living/utils/TBLSLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string/jumbo v1, "ntbls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string/jumbo v1, "ntbls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :pswitch_3
    const-string/jumbo v1, "ntbls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :pswitch_4
    const-string/jumbo v1, "ntbls"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setPrintLog(Z)V
    .locals 0
    .param p0, "printLog"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/taobao/living/utils/TBLSLog;->isPrintLog:Z

    .line 25
    return-void
.end method

.method public static setUseTlog(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    .line 29
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 83
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$Level;->V:Lcom/taobao/living/utils/TBLSLog$Level;

    invoke-static {v0}, Lcom/taobao/living/utils/TBLSLog;->isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "kv"    # [Ljava/lang/Object;

    .prologue
    .line 118
    sget-object v0, Lcom/taobao/living/utils/TBLSLog$Level;->W:Lcom/taobao/living/utils/TBLSLog$Level;

    invoke-static {v0}, Lcom/taobao/living/utils/TBLSLog;->isPrintLog(Lcom/taobao/living/utils/TBLSLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-boolean v0, Lcom/taobao/living/utils/TBLSLog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljox;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/taobao/living/utils/TBLSLog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/taobao/living/utils/TBLSLog;->buildLogMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method
