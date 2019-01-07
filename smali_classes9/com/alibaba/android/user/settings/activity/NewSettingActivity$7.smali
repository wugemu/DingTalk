.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$7;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "opened"

    if-eqz p2, :cond_0

    const-string/jumbo v1, "on"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "NewSettingActivity"

    const-string/jumbo v3, "chat_focus_model_myset"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Z)V

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz p2, :cond_1

    sget v1, Lezg$l;->dt_efficient_switch_tips_on:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    return-void

    .line 204
    :cond_0
    const-string/jumbo v1, "off"

    goto :goto_0

    .line 207
    :cond_1
    sget v1, Lezg$l;->dt_efficient_switch_tips_off:I

    goto :goto_1
.end method
