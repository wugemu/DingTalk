.class Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

.field final synthetic val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$000(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadFromCacheList(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplTriggerOnComplatedEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 203
    :catch_2
    move-exception v0

    .line 204
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplTriggerOnComplatedEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 202
    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :cond_1
    :goto_1
    throw v1

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplTriggerOnComplatedEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
