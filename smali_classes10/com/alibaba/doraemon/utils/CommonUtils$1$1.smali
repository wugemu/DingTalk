.class Lcom/alibaba/doraemon/utils/CommonUtils$1$1;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/utils/CommonUtils$1;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/utils/CommonUtils$1;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/CommonUtils$1;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/utils/CommonUtils$1;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;->this$0:Lcom/alibaba/doraemon/utils/CommonUtils$1;

    iput-object p2, p0, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;->this$0:Lcom/alibaba/doraemon/utils/CommonUtils$1;

    iget-object v0, v0, Lcom/alibaba/doraemon/utils/CommonUtils$1;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 266
    return-void
.end method
