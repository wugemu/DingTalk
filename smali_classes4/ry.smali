.class public Lry;
.super Ljava/lang/Object;
.source "ChoosePeopleFromMailHelper.java"


# static fields
.field private static volatile a:Lry;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field private d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Laff$a;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lry$2;

    invoke-direct {v0, p0}, Lry$2;-><init>(Lry;)V

    iput-object v0, p0, Lry;->h:Laff$a;

    .line 1085
    new-instance v0, Lry$1;

    invoke-direct {v0, p0}, Lry$1;-><init>(Lry;)V

    iput-object v0, p0, Lry;->g:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1105
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lry;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lry;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lry;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 47
    iput-object p1, p0, Lry;->b:Ljava/util/Map;

    return-object p1
.end method

.method public static a()Lry;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lry;->a:Lry;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lry;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lry;->a:Lry;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lry;

    invoke-direct {v0}, Lry;-><init>()V

    sput-object v0, Lry;->a:Lry;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lry;->a:Lry;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lry;I)V
    .locals 9
    .param p0, "x0"    # Lry;
    .param p1, "x1"    # I

    .prologue
    const/4 v8, 0x1

    .line 47
    .line 4137
    iget-object v0, p0, Lry;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 4141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4143
    iget-object v0, p0, Lry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labn;

    .line 4144
    if-eqz v0, :cond_0

    iget-object v4, v0, Labn;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4147
    iget-object v0, v0, Labn;->b:Ljava/lang/String;

    invoke-static {v0}, Lajl;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4148
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 4151
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4156
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 4157
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 4158
    sget v0, Laxo$i;->mail_participant_no_uid_call:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4164
    :cond_2
    :goto_1
    return-void

    .line 4159
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 4160
    sget v0, Laxo$i;->mail_participant_no_uid_chat:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 4161
    :cond_4
    if-ne p1, v8, :cond_2

    .line 4162
    sget v0, Laxo$i;->mail_participant_no_uid_ding:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 4300
    :cond_5
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_6

    .line 4301
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 4168
    :cond_6
    new-instance v0, Lry$3;

    invoke-direct {v0, p0, p1}, Lry$3;-><init>(Lry;I)V

    .line 4194
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Lcma;

    iget-object v4, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4197
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_1
.end method

.method static synthetic a(Lry;ILjava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lry;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 47
    .line 5201
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5202
    :cond_0
    :goto_0
    return-void

    .line 5205
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5208
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5209
    if-eqz v0, :cond_2

    .line 5213
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 5214
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5217
    :cond_3
    iget-object v0, p0, Lry;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 5219
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5220
    iget-object v0, p0, Lry;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 5221
    if-eqz v0, :cond_4

    const-string/jumbo v5, "unread"

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    .line 5222
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5224
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5228
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5229
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5230
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5235
    :cond_7
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/mail/selected.html"

    iget-object v4, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lry$4;

    invoke-direct {v5, p0, v1, p1, v2}, Lry$4;-><init>(Lry;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lry;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lry;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    .line 3259
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    .line 3260
    iget-object v1, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lry;)Z
    .locals 1
    .param p0, "x0"    # Lry;

    .prologue
    .line 47
    .line 2312
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    :goto_0
    return v0

    .line 2315
    :cond_0
    const/4 v0, 0x1

    .line 47
    goto :goto_0
.end method

.method static synthetic b(Lry;)I
    .locals 1
    .param p0, "x0"    # Lry;

    .prologue
    .line 47
    iget v0, p0, Lry;->f:I

    return v0
.end method

.method static synthetic b(Lry;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lry;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    .line 3264
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3266
    iget-object v0, p0, Lry;->c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3267
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lry$5;

    invoke-direct {v2, p0, p1}, Lry$5;-><init>(Lry;Ljava/util/List;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v1, v0}, Lacg;->a(Ljava/util/List;Lcma;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lry;

    .prologue
    .line 47
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic d(Lry;)V
    .locals 1
    .param p0, "x0"    # Lry;

    .prologue
    .line 47
    .line 4306
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 4307
    iget-object v0, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/util/List;ILcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 6
    .param p1, "mailModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p3, "actionType"    # I
    .param p4, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;I",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    .local p2, "participantsModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    iput-object p1, p0, Lry;->c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 128
    iput p3, p0, Lry;->f:I

    .line 129
    iput-object p4, p0, Lry;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 130
    iput-object p2, p0, Lry;->e:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lry;->h:Laff$a;

    .line 2106
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 2114
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-static {v4}, Lafh;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2115
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2119
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2123
    new-instance v0, Laff$2;

    invoke-direct {v0, p4, v1}, Laff$2;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laff$a;)V

    .line 2155
    const-class v1, Lcma;

    invoke-static {v0, v1, p4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2156
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5, v0}, Lro;->a(Ljava/util/List;JLcma;)V

    goto :goto_0
.end method
