.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;
.super Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c",
        "<",
        "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V
    .locals 0
    .param p2, "key"    # I

    .prologue
    .line 910
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    .line 912
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 908
    check-cast p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 1916
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->u(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1919
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->s(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_calendar_null_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1927
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V

    .line 1928
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 908
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 937
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 938
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 941
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V

    .line 943
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$d;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;

    .line 944
    return-void
.end method
