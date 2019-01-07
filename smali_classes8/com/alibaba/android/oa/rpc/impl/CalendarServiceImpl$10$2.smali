.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;
.super Lcmi;
.source "CalendarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lefn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->d:Lcma;

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 329
    check-cast p1, Lefn;

    .line 1333
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->d:Lcma;

    if-eqz v0, :cond_0

    .line 1337
    invoke-static {p1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->fromIDLModel(Lefn;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    move-result-object v0

    .line 1338
    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    iget-object v1, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;->d:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1340
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 329
    :cond_0
    return-void
.end method
