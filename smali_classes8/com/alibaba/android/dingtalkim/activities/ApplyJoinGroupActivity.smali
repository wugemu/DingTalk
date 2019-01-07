.class public Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ApplyJoinGroupActivity.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->f:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->finish()V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v1, Lctk$g;->im_apply_join_group_activity:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "inviter_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->c:J

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "qrcode_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "origin"

    invoke-static {v1, v2, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->e:I

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->finish()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    sget v1, Lctk$f;->apply_text_editor:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    .line 43
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lctk$i;->dt_im_join_group_apply_message_fmt:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 46
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_im_join_group_apply_message_send:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 64
    .local v0, "nextItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1079
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->showLoadingDialog()V

    .line 1082
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->a:Landroid/widget/EditText;

    .line 1083
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->c:J

    iget v6, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->e:I

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;->d:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1084
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;)V

    const-class v9, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v8, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 1082
    invoke-interface/range {v1 .. v8}, Lcom/alibaba/wukong/im/ConversationService;->applyJoinGroup(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
