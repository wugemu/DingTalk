.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getManagerCalendarPersonalData(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->c:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->a:J

    iput-object p4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 374
    invoke-static {}, Leef;->a()Leef;

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->a:J

    .line 1179
    invoke-static {v4, v5}, Leef;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 1180
    invoke-static {v3}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 376
    .local v1, "obj":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->b:Lcma;

    if-eqz v3, :cond_0

    .line 377
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 419
    :goto_0
    return-void

    .line 386
    :cond_0
    const-class v3, Lcom/alibaba/android/oa/idl/service/PersonCalIService;

    .line 387
    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/oa/idl/service/PersonCalIService;

    .line 388
    .local v2, "service":Lcom/alibaba/android/oa/idl/service/PersonCalIService;
    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11$2;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;)V

    .line 418
    .local v0, "callback":Lcmi;, "Lcmi<Lefp;>;"
    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alibaba/android/oa/idl/service/PersonCalIService;->getPersonCalDayFullInfos(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
