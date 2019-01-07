.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1294
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_namecard_button_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1295
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1296
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "show_select_dialog_tips"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    sget v2, Lctk$i;->send_name_card_to_chat:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1298
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "ACTIVITY_IDENTIFY_NAME_CARD"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    sget v2, Lctk$i;->select_contact_name_card:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string/jumbo v0, "needCreateUid"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1301
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1302
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v2, 0x0

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 1304
    return-void
.end method
