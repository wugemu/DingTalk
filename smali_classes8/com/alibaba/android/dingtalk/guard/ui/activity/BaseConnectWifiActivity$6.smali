.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;
.super Ljava/lang/Object;
.source "BaseConnectWifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->e(Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_cannot_open_wifi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_open_wifi_dialog_click"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_connect_wifi_fail_alert:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_connect_wifi_fail_dialog_click"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_reset_exclusive_psk_alert_content:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_reset_psk_alert_confirm"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_location_service_closed_alert:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_open_location_service_dialog_confirm"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_no_wifi_permission_alert:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_open_wifi_permission_dialog_confirm"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->c:Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_no_location_permission_alert:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/BaseConnectWifiActivity$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string/jumbo v0, "BaseConnectWifiActivity"

    const-string/jumbo v1, "alpha_open_location_permission_dialog_confirm"

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
