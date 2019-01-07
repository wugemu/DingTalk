.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getManagerCalFullInfos(JJJJJZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcma;

.field final synthetic h:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;ZJJJJJLcma;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->h:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-boolean p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->a:Z

    iput-wide p3, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->b:J

    iput-wide p5, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->c:J

    iput-wide p7, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->d:J

    iput-wide p9, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->e:J

    iput-wide p11, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->f:J

    iput-object p13, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->g:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->a:Z

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Leef;->a()Leef;

    iget-wide v0, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->b:J

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->c:J

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->d:J

    iget-wide v6, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->e:J

    iget-wide v8, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->f:J

    .line 1132
    invoke-static/range {v0 .. v9}, Leef;->a(JJJJJ)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

    .line 69
    .local v10, "obj":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    if-eqz v10, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->g:Lcma;

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$1;

    invoke-direct {v2, p0, v10}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 113
    .end local v10    # "obj":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    :goto_0
    return-void

    .line 80
    :cond_0
    const-class v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 81
    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 82
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v6, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1$2;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;)V

    .line 112
    .local v6, "callback":Lcmi;, "Lcmi<Lefq;>;"
    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v8, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getManagerCalFullInfos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
