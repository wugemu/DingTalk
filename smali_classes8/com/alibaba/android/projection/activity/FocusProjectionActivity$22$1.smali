.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1930
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->N(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Legw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1935
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1936
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->i(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z

    .line 1937
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Focus_set_focus_code"

    const-string/jumbo v2, "focus_quick_projection_start"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1938
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    goto :goto_0

    .line 1940
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Focus_set_focus_code"

    const-string/jumbo v2, "focus_quick_projection_alert"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1941
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$22;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->O(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    goto :goto_0
.end method
