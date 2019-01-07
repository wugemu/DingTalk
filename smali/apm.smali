.class public final Lapm;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverPresenter.java"

# interfaces
.implements Lapl$a;


# instance fields
.field a:Lapl$b;

.field b:Landroid/app/Activity;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lauk;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lapl$b;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lapl$b;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapm;->c:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapm;->d:Ljava/util/List;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lapm;->b:Landroid/app/Activity;

    .line 58
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 63
    const-string/jumbo v0, "[CalendarShareSetReceiverPresenter]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_2
    iput-object p2, p0, Lapm;->a:Lapl$b;

    .line 69
    iget-object v0, p0, Lapm;->a:Lapl$b;

    invoke-interface {v0, p0}, Lapl$b;->setPresenter(Lcjd;)V

    .line 1083
    new-instance v0, Lapm$1;

    invoke-direct {v0, p0}, Lapm$1;-><init>(Lapm;)V

    iput-object v0, p0, Lapm;->g:Landroid/content/BroadcastReceiver;

    .line 1108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1109
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v1, "calendar_share_stop_share_fresh_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lapm;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2076
    if-eqz v0, :cond_3

    .line 2079
    const-string/jumbo v1, "calendar_share_folder_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapm;->e:Ljava/lang/String;

    .line 2172
    :cond_3
    new-instance v0, Lapm$3;

    invoke-direct {v0, p0}, Lapm$3;-><init>(Lapm;)V

    .line 2201
    iget-object v1, p0, Lapm;->b:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 2202
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lapm;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2205
    :cond_4
    iget-object v1, p0, Lapm;->a:Lapl$b;

    invoke-interface {v1}, Lapl$b;->b()V

    .line 2206
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-object v2, p0, Lapm;->e:Ljava/lang/String;

    .line 2479
    iget-object v3, v1, Latf;->b:Latf$a;

    new-instance v4, Latf$19;

    invoke-direct {v4, v1, v2, v0}, Latf$19;-><init>(Latf;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v3, v4}, Latf$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lapm;Ljava/util/List;Z)V
    .locals 4
    .param p0, "x0"    # Lapm;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v3, 0x0

    .line 42
    .line 5298
    new-instance v0, Lapm$4;

    invoke-direct {v0, p0, p2}, Lapm$4;-><init>(Lapm;Z)V

    .line 5320
    iget-object v1, p0, Lapm;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5321
    const-class v1, Lauk$a;

    iget-object v2, p0, Lapm;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauk$a;

    .line 5323
    :cond_0
    iget-object v1, p0, Lapm;->f:Lauk;

    if-eqz v1, :cond_1

    .line 5324
    iget-object v1, p0, Lapm;->f:Lauk;

    .line 6099
    const/4 v2, 0x1

    iput-boolean v2, v1, Lauk;->a:Z

    .line 5326
    :cond_1
    new-instance v1, Lauk;

    invoke-direct {v1, p1, v0}, Lauk;-><init>(Ljava/util/List;Lauk$a;)V

    iput-object v1, p0, Lapm;->f:Lauk;

    .line 5327
    iget-object v0, p0, Lapm;->f:Lauk;

    .line 7093
    iput-boolean v3, v0, Lauk;->a:Z

    .line 7094
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lauk;->c:Ljava/util/List;

    .line 7095
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, v0, Lauk;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lapm;->c:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lapm;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 213
    iget-object v5, p0, Lapm;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 214
    .local v3, "object":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v3    # "object":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    :cond_1
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    .line 4034
    .local v0, "calendarShareManager":Lari;
    iget v1, v0, Lari;->a:I

    .line 221
    .local v1, "chooseLimitCount":I
    iget-object v5, p0, Lapm;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 4038
    if-nez v5, :cond_3

    .line 4039
    const-string/jumbo v2, ""

    .line 223
    .local v2, "chooseLimitTip":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lapm;->b:Landroid/app/Activity;

    iget-object v6, p0, Lapm;->b:Landroid/app/Activity;

    sget v7, Laow$f;->dt_ding_add_sharer:I

    .line 224
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "identify_calendar_share_activity"

    .line 231
    invoke-static {v4}, Lavz;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4204
    if-eqz v5, :cond_2

    .line 4207
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    .line 4208
    new-instance v10, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 4209
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4210
    invoke-virtual {v10, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4211
    invoke-virtual {v10, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4212
    invoke-virtual {v10, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4213
    invoke-virtual {v10, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4214
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4215
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4216
    invoke-virtual {v10, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4217
    invoke-virtual {v10, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4218
    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4227
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4228
    const-string/jumbo v7, "intent_key_contact_choose_request"

    .line 5053
    iget-object v8, v10, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 4228
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4229
    invoke-virtual {v9, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 233
    :cond_2
    return-void

    .line 4041
    .end local v2    # "chooseLimitTip":Ljava/lang/String;
    :cond_3
    sget v6, Laow$f;->dt_ding_share_receiver_max_count_AT:I

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v0, Lari;->a:I

    .line 4042
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 4041
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    .param p2, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lapm;->b:Landroid/app/Activity;

    .line 5237
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 5238
    :cond_0
    :goto_0
    return-void

    .line 5241
    :cond_1
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/calendar/detail_share"

    new-instance v2, Lavr$10;

    invoke-direct {v2, p1, p2}, Lavr$10;-><init>(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 8
    .param p2, "isSendMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 117
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 123
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_2

    .line 124
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    new-instance v0, Lash;

    iget-object v4, p0, Lapm;->e:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-direct {v0, v4, v3, v5}, Lash;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 3042
    .local v0, "calendarShareParamObject":Lash;
    iput-boolean p2, v0, Lash;->a:Z

    .line 131
    new-instance v1, Lapm$2;

    invoke-direct {v1, p0, p1, v3}, Lapm$2;-><init>(Lapm;Ljava/util/List;Ljava/util/List;)V

    .line 164
    .local v1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lapm;->b:Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 165
    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lapm;->b:Landroid/app/Activity;

    invoke-static {v1, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 167
    .restart local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v4, p0, Lapm;->a:Lapl$b;

    invoke-interface {v4}, Lapl$b;->b()V

    .line 168
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    .line 3425
    iget-object v5, v4, Latf;->b:Latf$a;

    new-instance v6, Latf$13;

    invoke-direct {v6, v4, v0, v1}, Latf$13;-><init>(Latf;Lash;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v5, v6}, Latf$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lapm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lapm;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lapm;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 295
    :cond_0
    return-void
.end method
