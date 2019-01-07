.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;
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
        "Lega;",
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
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 272
    check-cast p1, Lega;

    .line 1275
    if-eqz p1, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Lega;)Lega;

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {p1}, Lega;->a()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1278
    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .line 2053
    iget-object v0, p1, Lega;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2054
    iget-object v0, p1, Lega;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1278
    :goto_0
    invoke-static {v3, v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1279
    iget-object v3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iget-object v0, p1, Lega;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->c(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1281
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->dismissLoadingDialog()V

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->e(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 1284
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Z)Z

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->f(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 1286
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2056
    goto :goto_0

    .line 1289
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v1, "error_desc"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getAlarmInterface()Lgvi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgvi;->warn(Ljava/util/Map;)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$9;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->g(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 304
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 295
    return-void
.end method
