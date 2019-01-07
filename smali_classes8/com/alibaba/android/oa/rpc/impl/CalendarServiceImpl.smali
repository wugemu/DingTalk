.class public Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;
.super Ljava/lang/Object;
.source "CalendarServiceImpl.java"

# interfaces
.implements Lcom/alibaba/android/oa/rpc/CalendarService;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->sInstance:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    invoke-direct {v0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;-><init>()V

    sput-object v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->sInstance:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;

    .line 58
    :cond_0
    sget-object v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->sInstance:Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelSubscribeOrgEmpMessagePush(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 279
    .local v1, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$9;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$9;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V

    .line 297
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->cancelSubscribeOrgEmpMessagePush(Ljava/lang/Long;Liyv;)V

    .line 298
    return-void
.end method

.method public getDayManagerCalDetails(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .locals 13
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "date"    # J
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "subAppId"    # Ljava/lang/String;
    .param p9, "itemType"    # I
    .param p10, "start"    # I
    .param p11, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p12, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    const-class v2, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 203
    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 204
    .local v1, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v11, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$6;

    move-object/from16 v0, p12

    invoke-direct {v11, p0, v0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$6;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V

    .line 225
    .local v11, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lcfc;>;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-interface/range {v1 .. v11}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getDayManagerCalDetails(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V

    .line 227
    return-void
.end method

.method public getDaySubDeptManagerCalStatistics(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "date"    # J
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "subAppId"    # Ljava/lang/String;
    .param p9, "itemType"    # I
    .param p10, "start"    # I
    .param p11, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p12, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    const-class v2, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 175
    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 176
    .local v1, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v10, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;

    move-object/from16 v0, p12

    invoke-direct {v10, p0, v0}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$5;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V

    .line 197
    .local v10, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lcfc;>;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-interface/range {v1 .. v10}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getDaySubDeptManagerCalStatistics(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 198
    return-void
.end method

.method public getManagerCalDayFullInfos(JJJLcma;)V
    .locals 11
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$4;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;JJJLcma;)V

    invoke-interface {v9, v10, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public getManagerCalFullInfos(JJJJJZLcma;)V
    .locals 17
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "currentTime"    # J
    .param p11, "isReadFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p12, "listener":Lcma;, "Lcma<Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    sget-object v15, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;

    move-object/from16 v2, p0

    move/from16 v3, p11

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$1;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;ZJJJJJLcma;)V

    invoke-interface {v0, v15, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public getManagerCalendarOrgData(JJZLcma;)V
    .locals 11
    .param p1, "oid"    # J
    .param p3, "date"    # J
    .param p5, "isReadFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    sget-object v9, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;

    move-object v2, p0

    move/from16 v3, p5

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$10;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;ZJJLcma;)V

    invoke-interface {v0, v9, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public getManagerCalendarPersonalData(JLcma;)V
    .locals 3
    .param p1, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$11;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;JLcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public getNodesFromDirectDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V
    .locals 17
    .param p1, "oid"    # J
    .param p3, "deptId"    # J
    .param p5, "date"    # J
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "subAppId"    # Ljava/lang/String;
    .param p9, "itemType"    # I
    .param p10, "start"    # I
    .param p11, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lefz;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p12, "listener":Lcma;, "Lcma<Ljava/util/List<Lefz;>;>;"
    if-nez p12, :cond_0

    .line 448
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    sget-object v15, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$2;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;JJJLjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v15, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getOrgEmpManagerCalSetting(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lega;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p3, "listener":Lcma;, "Lcma<Lega;>;"
    const-class v2, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 232
    .local v1, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$7;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V

    .line 249
    .local v0, "callback":Lcmi;, "Lcmi<Lefr;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->getManageCalSetting(Ljava/lang/Long;Liyv;)V

    .line 250
    return-void
.end method

.method public getUserNodesFromCurDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIIZLcma;)V
    .locals 19
    .param p1, "oid"    # J
    .param p3, "deptId"    # J
    .param p5, "date"    # J
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "subAppId"    # Ljava/lang/String;
    .param p9, "itemType"    # I
    .param p10, "start"    # I
    .param p11, "size"    # I
    .param p12, "containSubDept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lefz;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p13, "listener":Lcma;, "Lcma<Ljava/util/List<Lefz;>;>;"
    if-nez p13, :cond_0

    .line 474
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    sget-object v18, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;

    move-object/from16 v4, p0

    move-object/from16 v5, p13

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    invoke-direct/range {v3 .. v17}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$3;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;JJJLjava/lang/String;Ljava/lang/String;IIIZ)V

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public subscribeOrgEmpMessagePush(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;

    .line 255
    .local v1, "service":Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;
    new-instance v0, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$8;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl$8;-><init>(Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;Lcma;)V

    .line 273
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/oa/idl/service/DeptAttendanceStatisticsIService;->subscribeOrgEmpMessagePush(Ljava/lang/Long;Liyv;)V

    .line 274
    return-void
.end method
