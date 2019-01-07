.class public final Lapk;
.super Ljava/lang/Object;
.source "CalendarShareReceiverDetailPresenter.java"

# interfaces
.implements Lapj$a;


# instance fields
.field a:Lapj$b;

.field b:Landroid/app/Activity;

.field c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lapj$b;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lapj$b;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lapk;->b:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lapk;->a:Lapj$b;

    .line 44
    iget-object v0, p0, Lapk;->a:Lapj$b;

    invoke-interface {v0, p0}, Lapj$b;->setPresenter(Lcjd;)V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1051
    if-nez v2, :cond_2

    .line 1052
    const-string/jumbo v0, "[CalendarShareSetReceiverPresenter]handleIntent intent is null."

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lapk;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    if-eqz v0, :cond_1

    .line 1197
    new-instance v0, Lapk$4;

    invoke-direct {v0, p0}, Lapk$4;-><init>(Lapk;)V

    .line 1226
    iget-object v1, p0, Lapk;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1227
    const-class v1, Lcma;

    iget-object v2, p0, Lapk;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1230
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 48
    :cond_1
    return-void

    .line 1057
    :cond_2
    const-string/jumbo v0, "intent_key_detail_share_schedule"

    invoke-static {v2, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    iput-object v0, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 1058
    iget-object v0, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    if-nez v0, :cond_3

    .line 1059
    const-string/jumbo v0, "[CalendarShareSetReceiverPresenter]handleIntent ShareReceiverObject is null."

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lapk;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 1061
    goto :goto_0

    .line 1064
    :cond_3
    const-string/jumbo v0, "calendar_share_folder_id"

    invoke-static {v2, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapk;->d:Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lapk;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    const-string/jumbo v0, "[CalendarShareSetReceiverPresenter]handleIntent folderId is empty."

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lapk;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 1068
    goto :goto_0

    .line 1070
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lapk;->b:Landroid/app/Activity;

    iget-object v1, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v2

    .line 1275
    if-eqz v0, :cond_0

    .line 1278
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V
    .locals 8
    .param p1, "privilege"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 100
    iget-object v4, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    if-nez v4, :cond_0

    .line 146
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v3, "uid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lash;

    iget-object v4, p0, Lapk;->d:Ljava/lang/String;

    invoke-direct {v0, v4, v3, p1}, Lash;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 108
    .local v0, "calendarShareParamObject":Lash;
    new-instance v2, Lapk$1;

    invoke-direct {v2, p0}, Lapk$1;-><init>(Lapk;)V

    .line 114
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v1, Lapk$2;

    invoke-direct {v1, p0, v2, p1}, Lapk$2;-><init>(Lapk;Ljava/lang/Runnable;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 140
    .local v1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v4, p0, Lapk;->b:Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 141
    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lapk;->b:Landroid/app/Activity;

    invoke-static {v1, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 143
    .restart local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v4

    .line 1461
    iget-object v5, v4, Latf;->b:Latf$a;

    new-instance v6, Latf$17;

    invoke-direct {v6, v4, v0, v1}, Latf$17;-><init>(Latf;Lash;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v5, v6}, Latf$a;->execute(Ljava/lang/Runnable;)V

    .line 144
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v2, v6, v7}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 150
    iget-object v3, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v2, "uid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lapk;->c:Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lash;

    iget-object v3, p0, Lapk;->d:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    invoke-direct {v0, v3, v2, v4}, Lash;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V

    .line 158
    .local v0, "calendarShareParamObject":Lash;
    new-instance v1, Lapk$3;

    invoke-direct {v1, p0}, Lapk$3;-><init>(Lapk;)V

    .line 184
    .local v1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v3, p0, Lapk;->b:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 185
    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lapk;->b:Landroid/app/Activity;

    invoke-static {v1, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 187
    .restart local v1    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    :cond_1
    iget-object v3, p0, Lapk;->a:Lapj$b;

    invoke-interface {v3}, Lapj$b;->b()V

    .line 188
    invoke-static {}, Latf;->a()Latf;

    move-result-object v3

    .line 1470
    iget-object v4, v3, Latf;->b:Latf$a;

    new-instance v5, Latf$18;

    invoke-direct {v5, v3, v0, v1}, Latf$18;-><init>(Latf;Lash;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v4, v5}, Latf$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
