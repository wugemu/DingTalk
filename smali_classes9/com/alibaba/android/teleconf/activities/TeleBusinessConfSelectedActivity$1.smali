.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfSelectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string/jumbo v3, "count_limit"

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "title":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)I

    move-result v3

    if-lez v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)I

    move-result v1

    .line 213
    .local v1, "limitTip":I
    :goto_1
    const-string/jumbo v3, "count_limit_tips"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string/jumbo v3, "activity_identify"

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v3, "choose_people_action"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string/jumbo v3, "filter_myself"

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string/jumbo v3, "can_choose_current_user"

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string/jumbo v4, "seleced_members"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    const-string/jumbo v3, "hide_org_external"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 226
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "limitTip":I
    .end local v2    # "title":Ljava/lang/String;
    :goto_2
    return-void

    .line 204
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    sget v4, Leuj$l;->conf_txt_select_member_title:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 211
    :cond_1
    sget v1, Leuj$l;->conference_choose_limit:I

    .restart local v1    # "limitTip":I
    goto :goto_1

    .line 224
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "limitTip":I
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    goto :goto_2
.end method
