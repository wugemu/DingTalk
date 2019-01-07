.class final Lapm$1;
.super Landroid/content/BroadcastReceiver;
.source "CalendarShareSettingReceiverPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 83
    iput-object p1, p0, Lapm$1;->a:Lapm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 86
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lapm$1;->a:Lapm;

    .line 1042
    iget-object v6, v6, Lapm;->a:Lapl$b;

    .line 86
    invoke-interface {v6}, Lapl$b;->d()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2250
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string/jumbo v6, "com.workapp.choose.people.from.contact"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    const-string/jumbo v6, "activity_identify"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "identifier":Ljava/lang/String;
    const-string/jumbo v6, "identify_calendar_share_activity"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    const-string/jumbo v6, "choose_user_identities"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 94
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-object v6, v0, Lapm$1;->a:Lapm;

    .line 2042
    iget-object v6, v6, Lapm;->a:Lapl$b;

    .line 95
    invoke-interface {v6, v4}, Lapl$b;->a(Ljava/util/List;)V

    .line 101
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    :goto_1
    const-string/jumbo v6, "calendar_share_stop_share_fresh_list"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const-string/jumbo v6, "intent_key_detail_share_schedule"

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 103
    .local v5, "shareReceiverObject":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    const-string/jumbo v6, "calendar_share_return_from_detail_update_or_delete"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "IsUpdate":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lapm$1;->a:Lapm;

    .line 2242
    if-eqz v5, :cond_0

    .line 2245
    iget-object v6, v8, Lapm;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v8, Lapm;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2249
    iget-object v6, v8, Lapm;->d:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, v8, Lapm;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2253
    iget-object v6, v8, Lapm;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2254
    iget-object v6, v8, Lapm;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2255
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2256
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 2257
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2258
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 2261
    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_3

    .line 2262
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 2263
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->setPrivilege(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 2272
    :cond_4
    :goto_2
    iget-object v6, v8, Lapm;->a:Lapl$b;

    invoke-interface {v6}, Lapl$b;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2273
    iget-object v6, v8, Lapm;->a:Lapl$b;

    iget-object v7, v8, Lapm;->c:Ljava/util/List;

    iget-object v8, v8, Lapm;->d:Ljava/util/List;

    invoke-interface {v6, v7, v8}, Lapl$b;->a(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 97
    .end local v2    # "IsUpdate":I
    .end local v5    # "shareReceiverObject":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    .restart local v3    # "identifier":Ljava/lang/String;
    .restart local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[CalendarShareSetReceiverPresenter] action_choose_people list is empty."

    aput-object v8, v6, v7

    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2264
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v2    # "IsUpdate":I
    .restart local v5    # "shareReceiverObject":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    :cond_6
    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    .line 2265
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 2266
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method
