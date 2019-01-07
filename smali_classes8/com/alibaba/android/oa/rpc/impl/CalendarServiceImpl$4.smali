.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getManagerCalDayFullInfos(JJJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcma;

.field final synthetic e:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;JJJLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->e:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->b:J

    iput-wide p6, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->c:J

    iput-object p8, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    invoke-static {}, Leef;->a()Leef;

    iget-wide v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->a:J

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->b:J

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->c:J

    .line 1150
    invoke-static/range {v0 .. v5}, Leef;->a(JJJ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 124
    .local v7, "obj":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->d:Lcma;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$1;

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 168
    :goto_0
    return-void

    .line 134
    :cond_0
    const-class v0, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 135
    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 136
    .local v8, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v6, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4$2;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;)V

    .line 167
    .local v6, "callback":Lcmi;, "Lcmi<Lefp;>;"
    iget-wide v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v0, v1, v2, v6}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getManagerCalDayFullInfos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
