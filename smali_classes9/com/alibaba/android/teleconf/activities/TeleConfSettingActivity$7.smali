.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 205
    .local v1, "top":Z
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "status"

    if-eqz v1, :cond_0

    const-string/jumbo v2, "on"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_confrecord_topswitch_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    return-void

    .line 208
    :cond_0
    const-string/jumbo v2, "off"

    goto :goto_0
.end method
