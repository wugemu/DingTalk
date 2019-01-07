.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;
.super Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;
.source "AttendanceHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c",
        "<",
        "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
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
    .line 854
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$c;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    .line 856
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 852
    check-cast p1, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;

    .line 1860
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V

    .line 1861
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .line 852
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 872
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 875
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;)V

    .line 876
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;->d:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;)Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$g;

    .line 877
    return-void
.end method
