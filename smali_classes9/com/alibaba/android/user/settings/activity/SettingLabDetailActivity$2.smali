.class final Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;
.super Ljava/lang/Object;
.source "SettingLabDetailActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)Lcom/alibaba/android/user/settings/model/LabItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;->a:Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)Lcom/alibaba/android/user/settings/model/LabItem;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    .line 1059
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1060
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Z)V

    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1062
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1063
    const-string/jumbo v2, "type"

    if-eqz p2, :cond_2

    const-string/jumbo v0, "on"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "lab_at_me_messages_click"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1065
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Z)V

    goto :goto_0

    .line 1063
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_1
.end method
