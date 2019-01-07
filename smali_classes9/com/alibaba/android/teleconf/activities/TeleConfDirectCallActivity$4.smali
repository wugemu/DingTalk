.class final Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TeleConfDirectCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 330
    if-nez p2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 335
    const-string/jumbo v5, "activity_identify"

    invoke-static {p2, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "idenfier":Ljava/lang/String;
    const-string/jumbo v5, "DIRECT_CALL_ACTIVITY_CREATE_CALL"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    const-string/jumbo v5, "choose_mode"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 338
    .local v2, "mChooseMode":I
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 339
    .local v4, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 340
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create biz call directly at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 342
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 340
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 344
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 346
    .local v3, "toUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v6

    const-string/jumbo v5, "EVENTBUTLER"

    .line 347
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;

    invoke-direct {v7, p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v8, Lcma;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-interface {v5, v7, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 346
    invoke-virtual {v6, v10, v5}, Lewh;->a(ZLcma;)V

    goto/16 :goto_0

    .line 377
    .end local v3    # "toUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 379
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    goto/16 :goto_0

    .line 383
    .end local v1    # "idenfier":Ljava/lang/String;
    .end local v2    # "mChooseMode":I
    .end local v4    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v5, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "com.alibaba.dingtalk.telebase.action.CANCEL_SYSCALL"

    .line 384
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    goto/16 :goto_0
.end method
