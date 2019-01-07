.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field final synthetic b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;->b:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    iget-object v0, v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;->a:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 381
    return-void
.end method
