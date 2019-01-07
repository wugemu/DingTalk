.class Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;
.super Ljava/lang/Object;
.source "DynamicTemplateQuickPayCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->preLoad(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

.field final synthetic val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->this$0:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 42
    .local v1, "start":Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->this$0:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {v2, v3}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->access$000(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    if-eqz v2, :cond_0

    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "DynamicTemplateQuickPayCache::preLoad"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplPreloadOnComplatedEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplPreloadEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    if-eqz v2, :cond_0

    .line 48
    :try_start_3
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplPreloadOnComplatedEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    if-eqz v3, :cond_1

    .line 48
    :try_start_4
    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;->val$provider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v3}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 51
    :cond_1
    :goto_1
    throw v2

    .line 49
    :catch_3
    move-exception v0

    .line 50
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TplPreloadOnComplatedEx"

    invoke-virtual {v3, v4, v5, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
