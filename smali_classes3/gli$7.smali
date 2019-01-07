.class final Lgli$7;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Lgqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lgli;


# direct methods
.method constructor <init>(Lgli;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lgli;

    .prologue
    .line 277
    iput-object p1, p0, Lgli$7;->b:Lgli;

    iput-object p2, p0, Lgli$7;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lgli$7;->b:Lgli;

    .line 1040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lgli$7;->b:Lgli;

    .line 2040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 314
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method public final onProgress(IJJ)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 280
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 284
    const-string/jumbo v0, "genLocalFileSpaceDo"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgli$7$1;

    invoke-direct {v1, p0, p1}, Lgli$7$1;-><init>(Lgli$7;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method
