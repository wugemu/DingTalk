.class public Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;
.super Ljava/lang/Object;
.source "LogPrinterProxy.java"

# interfaces
.implements Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;


# instance fields
.field private mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V
    .locals 0
    .param p1, "printer"    # Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    .line 11
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    iget-object v1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    if-nez v1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    invoke-interface {v1, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;->print(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public print(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;->print(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
