.class final Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;
.super Ljava/lang/Object;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 279
    const-string/jumbo v3, "conversation_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v3, "key_pick_member_title"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    sget v5, Lctk$i;->dt_im_conversation_setting_admin_add_action_title:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v3, "count_limit"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v3, "filter_myself"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string/jumbo v3, "activity_identify"

    const-string/jumbo v4, "identify_add_admin"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v2, "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcvv;

    move-result-object v3

    invoke-virtual {v3}, Lcvv;->c()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz v0, :cond_2

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 290
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    .line 291
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    const-string/jumbo v3, "unchecked_users"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 296
    :cond_2
    return-object p1
.end method
