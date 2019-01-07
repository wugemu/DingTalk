.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;
.super Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c",
        "<",
        "Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;",
        ">;"
    }
.end annotation


# instance fields
.field d:Z

.field final synthetic e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V
    .locals 1
    .param p2, "key"    # I

    .prologue
    .line 732
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->d:Z

    .line 734
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 728
    check-cast p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

    .line 1738
    if-eqz p1, :cond_1

    .line 1739
    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mDayToCalendarEventMap:Ljava/util/Map;

    .line 1740
    if-eqz v0, :cond_1

    .line 1741
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1742
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1743
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcrz;->a(J)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2454
    iget v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;->b:I

    .line 1745
    invoke-static {v1}, Lcrz;->b(I)I

    move-result v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1746
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->t(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 1749
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->d:Z

    if-nez v0, :cond_2

    .line 1750
    if-eqz p1, :cond_4

    .line 1751
    iget-object v0, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mCurrentDayManagerCalendar:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    if-eqz v0, :cond_3

    .line 1752
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iget-object v1, p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mCurrentDayManagerCalendar:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;)V

    .line 1760
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 728
    return-void

    .line 1754
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, v6}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V

    goto :goto_1

    .line 1757
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, v6}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 770
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 773
    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->d:Z

    if-nez v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)V

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;->e:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$e;

    .line 777
    return-void
.end method
