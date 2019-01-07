.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
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
        "Lehi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2962
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iput-boolean p3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3005
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createSessionIdFailed: errorCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorDesc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 3007
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->b:Z

    if-eqz v0, :cond_0

    .line 3008
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->x(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3009
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const-string/jumbo v1, "start_exp"

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V

    .line 3011
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2962
    check-cast p1, Lehi;

    .line 3965
    if-eqz p1, :cond_0

    iget-object v0, p1, Lehi;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lehi;->a:Ljava/lang/Integer;

    .line 3966
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    .line 3967
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3968
    if-eqz p1, :cond_2

    .line 3969
    iget-object v0, p1, Lehi;->a:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lehi;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    const-string/jumbo v0, "decs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lehi;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lehi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3976
    :goto_0
    const-string/jumbo v2, "resolution"

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    move-result-object v0

    sget-object v3, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    const-string/jumbo v0, "is_succ"

    const-string/jumbo v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3978
    const-string/jumbo v0, "result"

    const-string/jumbo v2, "start_exp"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    const-string/jumbo v0, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3980
    const-string/jumbo v0, "log_ding_version"

    const-string/jumbo v2, "1.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3981
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "Page_Focus_set_focus_code"

    const-string/jumbo v3, "Page_Focus_set_focus_code_submit_click_result"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3983
    :cond_1
    :goto_2
    return-void

    .line 3972
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3976
    :cond_3
    const-string/jumbo v0, "2"

    goto :goto_1

    .line 3984
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p1, Lehi;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3985
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createSessionIdSuccess: sessionId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 3987
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->b:Z

    if-eqz v0, :cond_1

    .line 3989
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->c:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_IpReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3001
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$53;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2997
    return-void
.end method
