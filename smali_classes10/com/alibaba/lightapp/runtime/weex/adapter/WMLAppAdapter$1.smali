.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;
.super Ljava/lang/Object;
.source "WMLAppAdapter.java"

# interfaces
.implements Lhfl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhfl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljpq$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;Ljpq$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    iput-boolean v3, v0, Ljpq$a;->a:Z

    .line 80
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    iput-object p1, v0, Ljpq$a;->b:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    iput-object p2, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "WMLAppAdapter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "downLoadApp"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "download debug app failed"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljpq$a;->a:Z

    .line 72
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$result:Ljpq$a;

    iput-object v0, v1, Ljpq$a;->d:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLAppAdapter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void
.end method
