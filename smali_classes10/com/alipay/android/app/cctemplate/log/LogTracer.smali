.class public Lcom/alipay/android/app/cctemplate/log/LogTracer;
.super Ljava/lang/Object;
.source "LogTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/alipay/android/app/cctemplate/log/LogTracer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/android/app/cctemplate/log/LogTracer;->mInstance:Lcom/alipay/android/app/cctemplate/log/LogTracer;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/android/app/cctemplate/log/LogTracer;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/log/LogTracer;->mInstance:Lcom/alipay/android/app/cctemplate/log/LogTracer;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/log/LogTracer;->mInstance:Lcom/alipay/android/app/cctemplate/log/LogTracer;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->initialize(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public printExceptionStackTrace(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->printException(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "timespan"    # Ljava/lang/Long;

    .prologue
    .line 65
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    return-void
.end method

.method public traceTemplate(Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;)V
    .locals 5
    .param p1, "i"    # Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mWinName:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mNetType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateResult:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateTime:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "updateType"    # Ljava/lang/String;
    .param p4, "updateResult"    # Ljava/lang/String;
    .param p5, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
