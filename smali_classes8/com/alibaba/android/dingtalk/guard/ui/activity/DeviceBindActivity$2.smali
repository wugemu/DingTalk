.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;
.super Ljava/lang/Object;
.source "DeviceBindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .line 1989
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    .line 607
    if-eqz v1, :cond_0

    .line 608
    const-string/jumbo v1, "device_type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .line 2989
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    .line 608
    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v1, "device_server"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    .line 3989
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->a:Lbsw$b;

    .line 609
    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Smart_Device_Bind"

    const-string/jumbo v3, "Page_Smart_Device_Bind_pop_cancel_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;->finish()V

    .line 613
    return-void
.end method
