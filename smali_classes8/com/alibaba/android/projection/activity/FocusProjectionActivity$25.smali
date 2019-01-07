.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1970
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Focus_set_focus_code"

    const-string/jumbo v3, "focus_change_wifi"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1971
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->o(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/projection/utils/WifiUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1972
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1973
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1974
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1975
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1981
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 1982
    return-void

    .line 1977
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$25;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z

    .line 1978
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_ssid_fixed_tips:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
