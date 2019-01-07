.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$2;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;->dumpThreadInfo()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

.field final synthetic val$jsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$2;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$2;->val$jsonArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 647
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAllStackMsg()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "allStackMsg":Ljava/lang/String;
    const-string/jumbo v1, "TaskRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printDebugLogToFile(Ljava/lang/String;)V

    .line 650
    const-string/jumbo v1, "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printDebugLogToFile(Ljava/lang/String;)V

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$2;->val$jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printDebugLogToFile(Ljava/lang/String;)V

    .line 652
    const-string/jumbo v1, "================================================================================================================="

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printDebugLogToFile(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->flushDebugLogToFile()V

    .line 654
    return-void
.end method
