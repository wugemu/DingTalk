.class Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;
.super Ljava/lang/Object;
.source "TemplateSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/api/TemplateSync;->onSyncReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/api/TemplateSync;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "TemplateSync::onSyncReceived"

    const-string/jumbo v4, "start saveTemplate"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->saveTemplate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplSyncOnComplatedEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplSyncReceivedEx"

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    :try_start_3
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplSyncOnComplatedEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v3}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 89
    :try_start_4
    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/api/TemplateSync$2;->this$0:Lcom/alipay/android/app/cctemplate/api/TemplateSync;

    invoke-static {v3}, Lcom/alipay/android/app/cctemplate/api/TemplateSync;->access$000(Lcom/alipay/android/app/cctemplate/api/TemplateSync;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_1
    :goto_1
    throw v2

    .line 90
    :catch_3
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TplSyncOnComplatedEx"

    invoke-virtual {v3, v4, v5, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
