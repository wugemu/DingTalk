.class final Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getUserNodesFromCurDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIIZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Z

.field final synthetic k:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;JJJLjava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->k:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->a:Lcma;

    iput-wide p3, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->b:J

    iput-wide p5, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->c:J

    iput-wide p7, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->d:J

    iput-object p9, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->e:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->f:Ljava/lang/String;

    iput p11, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->g:I

    iput p12, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->h:I

    iput p13, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->i:I

    iput-boolean p14, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->j:Z

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
    .line 458
    new-instance v10, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;)V

    .line 470
    .local v10, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lefm;>;>;"
    const-class v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 471
    .local v0, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->f:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, p0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;->j:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface/range {v0 .. v10}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getUserNodesFromCurDeptOneDay(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V

    .line 472
    return-void
.end method
