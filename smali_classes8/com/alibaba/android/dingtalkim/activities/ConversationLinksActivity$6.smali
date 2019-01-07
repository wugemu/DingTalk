.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "ConversationLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 369
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_1

    .line 397
    :cond_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.workapp.choose.people.from.group.member"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    const-string/jumbo v6, "activity_identify"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "extraFlag":Ljava/lang/String;
    const-string/jumbo v6, "ACTIVITY_IDENTIFY_AT"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    const-string/jumbo v6, "intent_key_at_seed"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 382
    .local v0, "atSeed":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)J

    move-result-wide v8

    cmp-long v6, v8, v0

    if-nez v6, :cond_0

    .line 386
    const-string/jumbo v6, "choose_user_identities"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 387
    .local v5, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "autoFlag":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 393
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    add-int/lit8 v2, v2, 0x1

    .line 394
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcqt;

    move-result-object v9

    if-eq v2, v7, :cond_2

    move v6, v7

    :goto_1
    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v12, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v9, v6, v10, v11, v12}, Lcqt;->a(ZJLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
