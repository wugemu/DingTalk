.class final Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v2, "com.workapp.select.area"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string/jumbo v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "areaName":Ljava/lang/String;
    const-string/jumbo v2, "code"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->h:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    sget v6, Lezg$l;->login_title_select_area:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    .line 144
    invoke-static {v5}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    iget-object v5, v5, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->a:Landroid/widget/TextView;

    .line 145
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 143
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "areaName":Ljava/lang/String;
    :cond_0
    return-void
.end method
