.class Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;
.super Ljava/lang/Object;
.source "H5PerformanceLogRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->executeGetSystemWebViewVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;->this$0:Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;->this$0:Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    .line 354
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$100(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$002(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "H5PerformanceLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSystemWebViewVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$002(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const-string/jumbo v1, "0.0.0.0"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 359
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    const-string/jumbo v2, "0.0.0.0"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    throw v1
.end method
