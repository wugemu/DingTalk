.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "CONF_RECORD_ACTIVITY_SELECT_FAVO"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    const-string/jumbo v1, "seleced_members"

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "conf_call_biz_call_info"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    :cond_1
    return-object p1
.end method
