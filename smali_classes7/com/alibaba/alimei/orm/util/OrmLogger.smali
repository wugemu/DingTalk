.class public abstract Lcom/alibaba/alimei/orm/util/OrmLogger;
.super Ljava/lang/Object;
.source "OrmLogger.java"


# static fields
.field private static final CMAIL_MODULE:Ljava/lang/String; = "CMail"

.field private static final TAG:Ljava/lang/String; = "AlimeiOrm"

.field private static sTraceLogger:Lcom/alibaba/alimei/orm/util/ITraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/orm/util/OrmLogger;->sTraceLogger:Lcom/alibaba/alimei/orm/util/ITraceLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tag:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "AlimeiOrm"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", desc:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/orm/util/OrmLogger;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/orm/util/OrmLogger;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    :try_start_0
    const-string/jumbo v0, "AlimeiOrm"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, ""

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "tag:"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v4, "AlimeiOrm"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v4, ", desc:"

    aput-object v4, v3, v0

    const/4 v4, 0x3

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v6, ", msg:"

    aput-object v6, v5, v0

    const/4 v0, 0x1

    aput-object p0, v5, v0

    const/4 v0, 0x2

    const-string/jumbo v6, ", tr:"

    aput-object v6, v5, v0

    const/4 v6, 0x3

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 50
    :goto_0
    aput-object v0, v5, v6

    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/OrmLogger;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 49
    invoke-static {v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_1
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static varargs getAppendString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v1, "sbArg":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 21
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .end local v1    # "sbArg":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public static setTraceLogger(Lcom/alibaba/alimei/orm/util/ITraceLogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/alibaba/alimei/orm/util/ITraceLogger;

    .prologue
    .line 35
    sput-object p0, Lcom/alibaba/alimei/orm/util/OrmLogger;->sTraceLogger:Lcom/alibaba/alimei/orm/util/ITraceLogger;

    .line 36
    return-void
.end method

.method private static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/alimei/orm/util/OrmLogger;->sTraceLogger:Lcom/alibaba/alimei/orm/util/ITraceLogger;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/alibaba/alimei/orm/util/OrmLogger;->sTraceLogger:Lcom/alibaba/alimei/orm/util/ITraceLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/alimei/orm/util/ITraceLogger;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
