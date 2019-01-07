.class Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;
.super Ljava/lang/Object;
.source "TemplateCandidate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->syncTplsCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

.field final synthetic val$context:Lcom/alipay/android/app/cctemplate/api/ITplProvider;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;->this$0:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;->val$context:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

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
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;->this$0:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;->val$context:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {v1, v2}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->access$000(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplCandidateEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    throw v1
.end method
