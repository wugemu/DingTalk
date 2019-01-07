.class public Lcom/alipay/android/app/safepaylog/api/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;,
        Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;
    }
.end annotation


# static fields
.field private static final mLogItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;",
            "Lcom/alipay/android/app/safepaylog/api/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->QUICKPAY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->VERTIFY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->DEFAULT:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V
    .locals 3
    .param p0, "traceInfo"    # Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    .prologue
    .line 107
    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 108
    .local v0, "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    iget-object v2, v0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    :cond_0
    return-void
.end method

.method public static clearLogs(Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;)V
    .locals 2
    .param p0, "type"    # Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    .prologue
    .line 52
    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 53
    .local v0, "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, v0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 55
    iget-object v1, v0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 57
    :cond_0
    return-void
.end method

.method public static getLogs(Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;)Lcom/alipay/android/app/safepaylog/api/LogItem;
    .locals 1
    .param p0, "type"    # Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->initialize(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static printException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 101
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->print(Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static setPrinter(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V
    .locals 1
    .param p0, "printer"    # Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    .prologue
    .line 44
    new-instance v0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;-><init>(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    .line 45
    return-void
.end method

.method public static traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->COUNT:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v0, "traceInfo":Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    .line 84
    return-void
.end method

.method public static traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->EX:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "traceInfo":Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    .line 79
    return-void
.end method

.method public static traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogMessage;->getStackTraceMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "timespan"    # Ljava/lang/Long;

    .prologue
    .line 87
    const-string/jumbo v1, "LogFactory::tracePerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", timespan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->PERF:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, "traceInfo":Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    .line 90
    return-void
.end method

.method public static traceTemplate(Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;)V
    .locals 3
    .param p0, "templateInfo"    # Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;

    .prologue
    .line 60
    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 61
    .local v0, "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    iget-object v2, v0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    :cond_0
    return-void
.end method

.method public static traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "tplId"    # Ljava/lang/String;
    .param p1, "netType"    # Ljava/lang/String;
    .param p2, "updateType"    # Ljava/lang/String;
    .param p3, "updateResult"    # Ljava/lang/String;
    .param p4, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 67
    .local v6, "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    iget-object v8, v6, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    .end local v6    # "item":Lcom/alipay/android/app/safepaylog/api/LogItem;
    :cond_0
    return-void
.end method
