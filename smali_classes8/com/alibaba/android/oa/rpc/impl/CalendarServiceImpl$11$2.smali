.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;
.super Lcmi;
.source "CalendarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lefp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

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
    .line 412
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 389
    check-cast p1, Lefp;

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1397
    invoke-static {p1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->fromIDLModel(Lefp;)Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-object v1, v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1400
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 389
    :cond_0
    return-void
.end method
