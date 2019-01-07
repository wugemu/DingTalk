.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2$1;
.super Lcmi;
.source "CalendarServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lefm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2$1;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;

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
    .line 440
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2$1;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 432
    check-cast p1, Ljava/util/List;

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2$1;->a:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;->a:Lcma;

    invoke-static {p1}, Lefz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 432
    return-void
.end method
