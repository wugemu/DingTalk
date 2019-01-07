.class final Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfSelectMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 275
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 277
    :cond_0
    const-string/jumbo v4, "choose_mode"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 278
    .local v0, "chooseMode":I
    const-string/jumbo v4, "choose_user_identities"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 279
    .local v1, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_1

    if-ne v11, v0, :cond_5

    .line 281
    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 282
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 283
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)Ljava/util/List;

    .line 284
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v4, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Z)V

    .line 286
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 287
    .local v2, "userObj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_3

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 290
    new-instance v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v3, v5}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 292
    .local v3, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v2, v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 293
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v2    # "userObj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v3    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;Ljava/util/List;)V

    .line 298
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v11, :cond_6

    .line 299
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .end local v0    # "chooseMode":I
    .end local v1    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    :goto_1
    return-void

    .line 305
    .restart local v0    # "chooseMode":I
    .restart local v1    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfSelectMemberActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
