.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 318
    check-cast p1, Ljava/lang/Integer;

    .line 2033
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1322
    if-ne v0, v1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->dismissLoadingDialog()V

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 1326
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$10;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->h(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 343
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 334
    return-void
.end method
