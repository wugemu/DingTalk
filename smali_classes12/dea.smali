.class public final Ldea;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Lddz$a;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field b:Lddz$b;

.field c:Lcom/alibaba/wukong/im/Conversation;

.field d:Z

.field e:J

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldiz;

.field private h:Ldbw;

.field private i:Ldq;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lddz$b;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lddz$b;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "localContact"    # Z

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ldea$1;

    invoke-direct {v0, p0}, Ldea$1;-><init>(Ldea;)V

    iput-object v0, p0, Ldea;->j:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 118
    iput-object p2, p0, Ldea;->b:Lddz$b;

    .line 119
    iput-object p3, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 120
    iput-boolean p4, p0, Ldea;->d:Z

    .line 122
    iget-object v0, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Ldea;->b:Lddz$b;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ChatPresent View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Conversation param is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    iget-object v0, p0, Ldea;->b:Lddz$b;

    invoke-interface {v0, p0}, Lddz$b;->setPresenter(Lcjd;)V

    .line 1140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    const-string/jumbo v1, "finish_chat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    const-string/jumbo v1, "com.workapp.ding.settings"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    const-string/jumbo v1, "com.workapp.msg.at"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v1, "com.workapp.msg.send"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v1, "com.workapp.action.poi_info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lddq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Ldea;->i:Ldq;

    .line 1152
    iget-object v1, p0, Ldea;->i:Ldq;

    iget-object v2, p0, Ldea;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1153
    iget-object v1, p0, Ldea;->i:Ldq;

    iget-object v2, p0, Ldea;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/util/HashMap;)V
    .locals 11
    .param p1, "sendText"    # Ljava/lang/String;
    .param p2, "clearInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v3, 0x7

    .line 352
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v5, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 354
    .local v7, "iter":Ljava/util/Iterator;
    if-eqz p3, :cond_0

    .line 355
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 357
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 359
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 360
    .local v8, "key":Ljava/lang/Long;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 361
    .local v9, "val":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 366
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "key":Ljava/lang/Long;
    .end local v9    # "val":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "sendString":Ljava/lang/String;
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v10

    new-instance v0, Ldea$9;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ldea$9;-><init>(Ldea;ZLjava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v10, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method


# virtual methods
.method declared-synchronized a()Ldiz;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldea;->g:Ldiz;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ldiz;

    iget-object v1, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Ldea;->g:Ldiz;

    .line 265
    :cond_0
    iget-object v0, p0, Ldea;->g:Ldiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "mid"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "appendText"    # Ljava/lang/String;

    .prologue
    .line 706
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 709
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Ldea$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldea$4;-><init>(Ldea;JLjava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v7, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v0, p3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 512
    const-string/jumbo v0, "ChatSendPresenter"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldea$13;

    invoke-direct {v1, p0, p1}, Ldea$13;-><init>(Ldea;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/util/HashMap;)V
    .locals 12
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 994
    .local p2, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 995
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    .line 997
    .local v8, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v8, :cond_0

    .line 998
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->AT_CONTENT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 999
    .local v6, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 1000
    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    iget-wide v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v7, "EVENTBUTLER"

    .line 1001
    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v9, Ldea$6;

    invoke-direct {v9, p0, p2, v8}, Ldea$6;-><init>(Ldea;Ljava/util/HashMap;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    const-class v10, Lcom/alibaba/wukong/Callback;

    iget-object v11, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1002
    invoke-interface {v7, v9, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 999
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 1025
    .end local v6    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V
    .locals 4
    .param p1, "pickResult"    # Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Ldea;->b:Lddz$b;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_im_video_url_null:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Ldea;->b:Lddz$b;

    invoke-interface {v0}, Lddz$b;->a()V

    .line 478
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldea$12;

    invoke-direct {v1, p0, p1}, Ldea$12;-><init>(Ldea;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lfzm;Ljava/lang/String;)V
    .locals 6
    .param p1, "mailSendToIMDo"    # Lfzm;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 1029
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldea;->g:Ldiz;

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldea;->g:Ldiz;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "ChatSendPresenter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start send mail msg, localId = "

    aput-object v4, v2, v3

    const-string/jumbo v3, "0"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Ldea;->g:Ldiz;

    invoke-virtual {v0, p1, v5}, Ldiz;->a(Lfzm;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    if-nez p1, :cond_1

    .line 639
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v1, :cond_2

    .line 623
    const-string/jumbo v1, "ChatSendPresenter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldea$2;

    invoke-direct {v2, p0, p1}, Ldea$2;-><init>(Ldea;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 635
    :cond_2
    instance-of v1, p1, Lcqz$a;

    if-eqz v1, :cond_0

    .line 636
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    check-cast p1, Lcqz$a;

    .line 2856
    .end local p1    # "object":Ljava/lang/Object;
    iget-object v3, p1, Lcqz$a;->a:Ljava/lang/String;

    .line 636
    invoke-virtual {v1, v2, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 637
    .local v0, "spannableString":Landroid/text/SpannableString;
    iget-object v1, p0, Ldea;->b:Lddz$b;

    invoke-interface {v1, v0}, Lddz$b;->c(Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 9
    .param p1, "sendText"    # Ljava/lang/String;
    .param p2, "singleChatProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p4, "canBurnChat"    # Z
    .param p5, "statisticsFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    .local p3, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ldea;->a()Ldiz;

    move-result-object v0

    .line 2145
    iget-object v0, v0, Ldiz;->a:Ldkh;

    .line 270
    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Ldea;->b:Lddz$b;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->chat_initing:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lddz$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "contString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    if-eqz p4, :cond_3

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Ldqm;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Ldea;->h:Ldbw;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Ldea;->h:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Ldea;->h:Ldbw;

    .line 286
    :cond_2
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ldea$7;

    invoke-direct {v6, p0}, Ldea$7;-><init>(Ldea;)V

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Ldea;->h:Ldbw;

    .line 301
    iget-object v0, p0, Ldea;->b:Lddz$b;

    invoke-interface {v0}, Lddz$b;->e()V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 308
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v8

    .line 309
    .local v8, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_4

    .line 310
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 312
    .restart local v8    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v0, "at_uids"

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0, v8}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 314
    iget-object v0, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateDraftMessage(Ljava/lang/String;)V

    .line 317
    .end local v8    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_6

    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Ldea;->a(Ljava/lang/String;ZLjava/util/HashMap;)V

    .line 322
    :goto_1
    iget-object v0, p0, Ldea;->b:Lddz$b;

    invoke-interface {v0}, Lddz$b;->e()V

    .line 323
    iget-object v0, p0, Ldea;->b:Lddz$b;

    invoke-interface {v0}, Lddz$b;->a()V

    goto/16 :goto_0

    .line 2327
    :cond_6
    if-eqz p3, :cond_7

    .line 2328
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 2331
    :cond_7
    invoke-static {}, Lddq;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldea$8;

    invoke-direct {v1, p0, p1}, Ldea$8;-><init>(Ldea;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "draft"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 862
    .local p2, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    .line 863
    const-string/jumbo p1, ""

    .line 865
    :cond_0
    iget-object v6, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 866
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 867
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 868
    .local v0, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 869
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 870
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 871
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 872
    .local v4, "key":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 873
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 875
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/Long;
    .end local v5    # "val":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 876
    .local v2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 877
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 879
    .restart local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v6, "at_uids"

    invoke-static {v0}, Lcpt;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v6, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6, v2}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 882
    .end local v0    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6, p1}, Lcom/alibaba/wukong/im/Conversation;->updateDraftMessage(Ljava/lang/String;)V

    .line 884
    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 948
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 949
    .local v0, "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 950
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 951
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    .line 952
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 949
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "uids":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 958
    .local v3, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uids"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_groupvideocall_button_ok_click"

    invoke-interface {v5, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 961
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 962
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "conversation_id"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string/jumbo v5, "conference_from_home"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 964
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v5

    iget-object v6, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v5, v6, p2, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 966
    .end local v0    # "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "uids":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 7
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    const/4 v6, 0x0

    .line 563
    if-eqz p1, :cond_0

    .line 564
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .line 565
    .local v1, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5, v1, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto :goto_0

    .line 569
    .end local v1    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_0
    if-eqz p2, :cond_2

    .line 570
    iget-object v3, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "to":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "to"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_chatbutton_collection_trans"

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 576
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 577
    .restart local v1    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v3, 0x1f4

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 578
    iput-object p2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 579
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v4, v1, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 581
    .end local v1    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v2    # "to":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "statisticKey"    # Ljava/lang/String;
    .param p3, "statisticSrc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    .local p1, "entitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const-string/jumbo v0, "ChatSendPresenter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldea$3;

    invoke-direct {v1, p0, p1, p2, p3}, Ldea$3;-><init>(Ldea;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 702
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "sendOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v2, "origin"

    if-eqz p2, :cond_2

    const-string/jumbo v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_photo_button_quicksend_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    iget-object v1, p0, Ldea;->b:Lddz$b;

    invoke-interface {v1}, Lddz$b;->a()V

    .line 446
    const-string/jumbo v1, "ChatSendPresenter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldea$11;

    invoke-direct {v2, p0, p1, p2}, Ldea$11;-><init>(Ldea;Ljava/util/List;Z)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 441
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method public final a(ZLjava/util/List;)V
    .locals 3
    .param p1, "sendOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    .local p2, "photoPickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v1, p0, Ldea;->b:Lddz$b;

    invoke-interface {v1}, Lddz$b;->a()V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v2, "origin"

    if-eqz p1, :cond_2

    const-string/jumbo v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_photo_button_quicksend_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    const-string/jumbo v1, "ChatSendPresenter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldea$10;

    invoke-direct {v2, p0, p2, p1}, Ldea$10;-><init>(Ldea;Ljava/util/List;Z)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 402
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "editContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 888
    .local p2, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v8, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v8, :cond_3

    .line 890
    iget-object v8, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 891
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v8

    iget-object v9, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v10, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 892
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    .line 894
    .local v6, "spannableString":Landroid/text/SpannableString;
    iget-object v8, p0, Ldea;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 895
    .local v2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 896
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 898
    .restart local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v8, "at_uids"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 899
    .local v0, "des":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 900
    invoke-static {v0}, Lcpt;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 901
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 902
    if-nez p2, :cond_1

    .line 903
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 905
    .restart local p2    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 906
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 907
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 908
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 909
    .local v4, "key":Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 910
    .local v7, "val":Ljava/lang/String;
    invoke-virtual {p2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 914
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Long;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v7    # "val":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Ldea;->b:Lddz$b;

    invoke-interface {v8, v6}, Lddz$b;->a(Landroid/text/SpannableString;)V

    .line 919
    .end local v0    # "des":Ljava/lang/String;
    .end local v2    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "spannableString":Landroid/text/SpannableString;
    :cond_3
    :goto_1
    return-void

    .line 916
    :cond_4
    iget-object v8, p0, Ldea;->b:Lddz$b;

    invoke-interface {v8}, Lddz$b;->f()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 970
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 972
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 973
    .local v0, "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 974
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 975
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    .line 976
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 973
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "uids":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 982
    .local v3, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uids"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "chat_groupvoipcall_button_ok_click"

    invoke-interface {v5, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 985
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 986
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "conversation_id"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v5, "conference_from_home"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 988
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v5

    iget-object v6, p0, Ldea;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v5, v6, p2, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 990
    .end local v0    # "buffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "uids":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 1046
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1055
    iget-object v0, p0, Ldea;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldea;->i:Ldq;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Ldea;->i:Ldq;

    iget-object v1, p0, Ldea;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1058
    :cond_0
    return-void
.end method
