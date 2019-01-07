.class final Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;
.super Ljava/lang/Object;
.source "ModifyGroupNickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "mGroupNick":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    sget v4, Lctk$i;->dt_im_group_nick_space_limit_tip:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    sget v2, Lctk$i;->network_error:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 116
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    sget v4, Lctk$i;->dt_im_group_nick_too_long_tip:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->showLoadingDialog()V

    .line 120
    new-instance v0, Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupNickObject;-><init>()V

    .line 121
    .local v0, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/GroupNickObject;->setConversationId(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/im/GroupNickObject;->setOpenId(J)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNick(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/wukong/im/GroupNickObject;->setGroupNickPinyin(Ljava/lang/String;)V

    .line 125
    const-class v2, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/GroupNickService;

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/wukong/im/GroupNickService;->updateGroupNick(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
