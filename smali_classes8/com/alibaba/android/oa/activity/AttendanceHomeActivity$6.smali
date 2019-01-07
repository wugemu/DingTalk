.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;ZLandroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://s.dingtalk.com/market/dingtalk/miniappexp.php?lwfrom=20150828102949399&type=calendar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string/jumbo v1, "show_options_menu"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    const-string/jumbo v1, "show_bottom_botton"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 626
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 627
    iget-boolean v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->a:Z

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->b:Landroid/widget/ImageView;

    sget v2, Ledz$e;->attendance_detail_help:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iget-object v1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$6;->c:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user_first_in_attentace"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 631
    :cond_0
    return-void
.end method
