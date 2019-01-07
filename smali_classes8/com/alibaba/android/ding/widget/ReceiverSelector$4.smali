.class final Lcom/alibaba/android/ding/widget/ReceiverSelector$4;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/ReceiverSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/ReceiverSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "ding create event: receiver_action:"

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 331
    const-string/jumbo v3, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.workapp.ding.choose.myself"

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    :cond_0
    const-string/jumbo v3, "activity_identify"

    invoke-static {p2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "identifier":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 336
    const-string/jumbo v3, "choose_user_identities"

    invoke-static {p2, v3}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_5

    .line 339
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 343
    :cond_1
    invoke-static {v1}, Lbkf;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    .line 345
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 349
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iget-object v3, v3, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector$a;

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    iget-object v3, v3, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector$a;

    invoke-interface {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector$a;->a()V

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c()V

    .line 353
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "receiver_size:"

    aput-object v4, v3, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 362
    .end local v0    # "identifier":Ljava/lang/String;
    .end local v1    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    :goto_0
    return-void

    .line 355
    .restart local v0    # "identifier":Ljava/lang/String;
    .restart local v1    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "receiver_size:0"

    aput-object v4, v3, v5

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v1    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "receiver_identify wrong"

    aput-object v4, v3, v5

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
