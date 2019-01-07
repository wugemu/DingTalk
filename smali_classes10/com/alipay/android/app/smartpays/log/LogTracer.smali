.class public Lcom/alipay/android/app/smartpays/log/LogTracer;
.super Ljava/lang/Object;
.source "LogTracer.java"


# static fields
.field private static mInstance:Lcom/alipay/android/app/smartpays/log/LogTracer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/android/app/smartpays/log/LogTracer;->mInstance:Lcom/alipay/android/app/smartpays/log/LogTracer;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alipay/android/app/smartpays/log/LogTracer;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;-><init>()V

    sput-object v0, Lcom/alipay/android/app/smartpays/log/LogTracer;->mInstance:Lcom/alipay/android/app/smartpays/log/LogTracer;

    .line 21
    :cond_0
    sget-object v0, Lcom/alipay/android/app/smartpays/log/LogTracer;->mInstance:Lcom/alipay/android/app/smartpays/log/LogTracer;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->initialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public printExceptionStackTrace(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->printException(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "timespan"    # Ljava/lang/Long;

    .prologue
    .line 41
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    return-void
.end method
