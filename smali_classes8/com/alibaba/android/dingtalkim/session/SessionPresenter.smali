.class public final Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ldyy$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;,
        Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;,
        Lcom/alibaba/android/dingtalkim/session/SessionPresenter$SessionType;
    }
.end annotation


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field private B:Landroid/content/BroadcastReceiver;

.field private C:Landroid/content/BroadcastReceiver;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Lcom/alibaba/wukong/im/StatusNotifyListener;

.field private I:Lcmt$a;

.field private J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private L:Ldbt;

.field private M:Lcom/alibaba/wukong/im/GroupNickListener;

.field private N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

.field private O:Lcom/alibaba/wukong/im/ConversationListener;

.field private P:Liak;

.field private Q:Ldyu$a;

.field private R:Ldyt$a;

.field private S:I

.field a:Ldyy$b;

.field b:Landroid/app/Activity;

.field c:Landroid/os/Handler;

.field d:Lcom/alibaba/wukong/im/Conversation;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field j:Z

.field k:D

.field l:F

.field m:I

.field n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

.field p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

.field q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

.field private s:Lcom/alibaba/wukong/im/category/CategoryObject;

.field private t:Ldjh;

.field private u:Ldyw;

.field private v:Ldkq;

.field private w:Ldyv;

.field private x:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private y:Lcjo$a;

.field private z:Lcjo$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ldyy$b;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parentConversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "view"    # Ldyy$b;
    .param p4, "sessionType"    # I

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    .line 146
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 150
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 151
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ldjh;

    invoke-direct {v0}, Ldjh;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->t:Ldjh;

    .line 167
    new-instance v0, Ldyw;

    invoke-direct {v0}, Ldyw;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->u:Ldyw;

    .line 168
    new-instance v0, Ldkq;

    invoke-direct {v0}, Ldkq;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->v:Ldkq;

    .line 169
    new-instance v0, Ldyv;

    invoke-direct {v0}, Ldyv;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->w:Ldyv;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->x:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 248
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;

    const-wide/16 v2, 0x64

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;J)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 215
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 216
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 217
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 218
    iput p4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Session View is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0, p0}, Ldyy$b;->setPresenter(Lcjd;)V

    .line 226
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 3782
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 4239
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4240
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 4787
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$26;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    .line 4800
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 4801
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    const-class v3, Lcjo$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    .line 4805
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$2;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    .line 4811
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 4812
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    const-class v3, Lcjo$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    .line 4815
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v0, :cond_5

    .line 4816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 4817
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 4820
    :cond_5
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    .line 4828
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 4829
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    const-class v3, Lcom/alibaba/wukong/im/GroupNickListener;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickListener;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    .line 4831
    :cond_6
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/GroupNickService;->addGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 4835
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$4;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->A:Landroid/content/BroadcastReceiver;

    .line 4914
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4915
    const-string/jumbo v2, "com.workapp.CONVERSATION_NOTICE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4916
    const-string/jumbo v2, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4917
    const-string/jumbo v2, "com.workapp.new.user.lifestyle.guide"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4918
    const-string/jumbo v2, "com.workapp.org_employee_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4919
    const-string/jumbo v2, "com.workapp.org.sync"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4920
    const-string/jumbo v2, "action_decrypt_last_msg_of_conversation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4921
    const-string/jumbo v2, "action_decrypt_msg_in_conversation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4922
    const-string/jumbo v2, "action_at_me_open_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4923
    const-string/jumbo v2, "action_push_task_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4924
    const-string/jumbo v2, "action_push_task_list_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4925
    const-string/jumbo v2, "action_search_query_hint_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4926
    const-string/jumbo v2, "action_settings_entry_update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4927
    const-string/jumbo v2, "action_hide_notification_setting_tip"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4928
    const-string/jumbo v2, "action_hide_contact_match_guide"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4929
    const-string/jumbo v2, "action_key_space_sync_drive_guide_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4931
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4935
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$5;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->H:Lcom/alibaba/wukong/im/StatusNotifyListener;

    .line 4946
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->H:Lcom/alibaba/wukong/im/StatusNotifyListener;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->registerListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 4948
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->I:Lcmt$a;

    .line 4972
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->I:Lcmt$a;

    invoke-virtual {v0, v2}, Lcmt;->a(Lcmt$a;)V

    .line 4975
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$7;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->E:Landroid/content/BroadcastReceiver;

    .line 4992
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4993
    const-string/jumbo v2, "action_background_audio_top"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4994
    const-string/jumbo v2, "action_background_audio_hide"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4995
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4998
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$8;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->B:Landroid/content/BroadcastReceiver;

    .line 5017
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5018
    const-string/jumbo v2, "com.workapp.lightapp.microapp.TOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5019
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5022
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$9;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->C:Landroid/content/BroadcastReceiver;

    .line 5051
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5052
    const-string/jumbo v2, "action_mail_to_im_top_tip"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5053
    const-string/jumbo v2, "action_mail_cancel_im_top_tip"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5054
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5057
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->G:Landroid/content/BroadcastReceiver;

    .line 5083
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5084
    const-string/jumbo v2, "intent_action_efficient_smart_time"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5085
    const-string/jumbo v2, "intent_action_efficient_mode_force_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5086
    const-string/jumbo v2, "intent_action_efficient_mode_force_open"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5087
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5346
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_deployment_record_enable"

    .line 5347
    invoke-virtual {v0, v2}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    .line 5349
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "contact_service_deploy_record"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 5351
    if-eqz v0, :cond_e

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    .line 5110
    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 6094
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    .line 6095
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$11;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    .line 6103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6104
    const-string/jumbo v1, "action_disturb_conv_switch_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6280
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-nez v0, :cond_9

    .line 6281
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 6284
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v0, :cond_a

    .line 6285
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 6298
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 7266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    if-nez v0, :cond_b

    .line 7267
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$12;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    .line 7275
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    .line 8068
    iget-object v0, v0, Ldbu;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8326
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->R:Ldyt$a;

    if-nez v0, :cond_c

    .line 8327
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->R:Ldyt$a;

    .line 8339
    :cond_c
    invoke-static {}, Ldyt;->a()Ldyt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->R:Ldyt$a;

    .line 9102
    iput-object v1, v0, Ldyt;->c:Ldyt$a;

    .line 9195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    if-nez v0, :cond_d

    .line 9196
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$14;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    .line 9289
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->addCategoryChangeListener(Liak;)V

    .line 236
    :cond_d
    return-void

    :cond_e
    move v0, v1

    .line 5351
    goto/16 :goto_0

    .line 5113
    :cond_f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 5114
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$13;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    .line 5181
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    if-nez v1, :cond_10

    .line 5182
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 5185
    :cond_10
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5186
    const-string/jumbo v2, "action_start_deployment_record"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5187
    const-string/jumbo v2, "action_stop_deployment_record"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5188
    const-string/jumbo v2, "action_try_upload_deployment_records"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5189
    const-string/jumbo v2, "action_is_deployment_recording"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5190
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)I
    .locals 8
    .param p2, "currentConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            "I)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2088
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    invoke-virtual {p0, p2, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 2089
    const/4 v2, 0x0

    .line 2090
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2091
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    const/4 v0, 0x1

    .line 2092
    .local v0, "cmp":I
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    .line 2095
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j()Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2101
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .line 2102
    .local v3, "isOlder":Z
    if-gez v0, :cond_1

    .line 2103
    const/4 v3, 0x1

    .line 2105
    :cond_1
    if-nez v3, :cond_2

    if-ne v2, p3, :cond_3

    .line 2106
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 2110
    goto :goto_0

    .line 2097
    .end local v3    # "isOlder":Z
    :catch_0
    move-exception v5

    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const-string/jumbo v7, "list sort compare fail findFirst"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2111
    .end local v0    # "cmp":I
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    return v2
.end method

.method static a(Lcom/alibaba/wukong/im/category/CategoryObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 8
    .param p0, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;
    .param p1, "mockCid"    # Ljava/lang/String;

    .prologue
    .line 1779
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>(I)V

    .line 1780
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-wide v4, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    .line 1781
    iget v3, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    iput v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    .line 1782
    iget-wide v4, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Liap;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1783
    iget-wide v4, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ldde;->b(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    .line 1785
    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :goto_0
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    .line 1787
    new-instance v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 1788
    .local v2, "mockConversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v2, p1}, Lcom/alibaba/wukong/im/Conversation;->setCid(Ljava/lang/String;)V

    .line 1789
    iget-wide v4, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->setTop(Z)V

    .line 1790
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1791
    return-object v0

    .line 1785
    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "mockConversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    move-object v1, v0

    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    goto :goto_0

    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    move-object v1, v0

    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    goto :goto_0

    .line 1789
    .restart local v2    # "mockConversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 1807
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "category_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 116
    .line 18115
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->w:Ldyv;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->v:Ldkq;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 116
    .line 20295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20296
    :cond_0
    :goto_0
    return-void

    .line 20298
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;)V

    .line 20299
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 20300
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20301
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 20302
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20303
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    iget v1, v1, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    goto :goto_1

    .line 20307
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 20311
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    goto :goto_0

    .line 20309
    :catch_0
    move-exception v0

    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "list sort compare fail sortCategory"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 116
    .line 20786
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 20787
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20788
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 20790
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.UNREAD_COUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20791
    const-string/jumbo v1, "unread_count"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20793
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 20795
    const/4 v0, 0x1

    .line 116
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x1

    .line 116
    .line 20544
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20545
    :cond_0
    :goto_0
    return-void

    .line 20547
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 20548
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 20549
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 20550
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20551
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20552
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 20553
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20554
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ldyy$b;->c(Ljava/lang/String;)V

    .line 20555
    const/4 v1, 0x0

    .line 20557
    :try_start_0
    const-string/jumbo v3, "im"

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 20558
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rm conv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20560
    if-eqz v1, :cond_2

    .line 20561
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_1

    .line 20560
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 20561
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_3
    throw v0

    .line 20567
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ldza;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ldyy$b;->a(I)V

    .line 20568
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    .line 20569
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20570
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0, v7}, Ldyy$b;->e(Z)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    const/4 v2, 0x1

    .line 116
    .line 18800
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18801
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->p()Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->LIVE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 18840
    :goto_0
    return-void

    .line 18805
    :cond_0
    const/4 v0, 0x0

    .line 18806
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18807
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 18808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 18809
    if-eqz v0, :cond_1

    .line 18812
    invoke-static {v0}, Ldwa;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18813
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_2
    move v1, v0

    .line 18816
    goto :goto_1

    :cond_2
    move v1, v0

    .line 18818
    :cond_3
    if-eqz p2, :cond_5

    .line 18820
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->p()Ldze;

    move-result-object v0

    sget-object v4, Lcom/alibaba/android/dingtalkim/session/header/Header;->LIVE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v4}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 18821
    if-eqz v0, :cond_5

    .line 19051
    iget-object v4, v0, Ldzl;->d:Ljava/lang/Object;

    .line 18821
    if-eqz v4, :cond_5

    .line 20051
    iget-object v0, v0, Ldzl;->d:Ljava/lang/Object;

    .line 18822
    check-cast v0, Ljava/util/List;

    .line 18823
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 18824
    if-eqz v0, :cond_4

    .line 18827
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 18830
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v0}, Ldwa;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 18831
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_4
    move v1, v0

    .line 18834
    goto :goto_3

    :catch_0
    move-exception v0

    .line 18839
    :cond_5
    if-eqz v1, :cond_6

    .line 18840
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->p()Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->LIVE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1, v3}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 18842
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->p()Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->LIVE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    .line 116
    .line 21741
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21745
    :cond_0
    :goto_0
    return-void

    .line 21744
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s:Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v0, :cond_0

    .line 21747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 21748
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 21749
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 21750
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21751
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s:Lcom/alibaba/wukong/im/category/CategoryObject;

    iget-wide v4, v3, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 21752
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 21753
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21754
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 21755
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21756
    const-string/jumbo v2, "SessionPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rm top "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22018
    const-string/jumbo v3, "im"

    invoke-static {v2, v0, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21760
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    goto/16 :goto_0
.end method

.method public static f()Z
    .locals 4

    .prologue
    .line 498
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_safe"

    const-string/jumbo v3, "just_hide_boss_chat"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static k()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 2201
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2202
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "SessionPresenter"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 2203
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 2204
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 2205
    return-object v0
.end method

.method private s()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    .line 10100
    if-eqz v1, :cond_0

    iget-object v2, v0, Ldyu;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10101
    iget-object v2, v0, Ldyu;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10103
    :cond_0
    invoke-virtual {v0}, Ldyu;->b()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    .line 323
    :cond_1
    return-void
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 2880
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)I
    .locals 5
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;Z)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    const/4 v4, 0x1

    .line 1642
    const/4 v1, 0x0

    .line 1643
    .local v1, "filterCount":I
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1644
    :cond_0
    const/4 v3, 0x0

    .line 1657
    :goto_0
    return v3

    .line 1647
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1648
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1649
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1651
    .local v0, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 12692
    invoke-virtual {p0, v3, v4, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/Conversation;ZZ)Z

    move-result v3

    .line 1651
    if-eqz v3, :cond_2

    .line 1652
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1653
    add-int/lit8 v1, v1, 0x1

    .line 1654
    iget v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->S:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->S:I

    goto :goto_1

    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_4
    move v3, v1

    .line 1657
    goto :goto_0
.end method

.method public final a()Lcom/alibaba/wukong/im/ConversationChangeListener;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V
    .locals 2
    .param p1, "sessionFilter"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-ne v0, p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-nez v0, :cond_3

    .line 357
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filterDisplay(Ljava/util/List;)V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    goto :goto_0

    .line 365
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 366
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->x()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V
    .locals 4
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "efficientMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1795
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldza;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1796
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->setDisplayType(I)V

    .line 1797
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 15137
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v2

    .line 1797
    iput-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    .line 1798
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 1799
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_0

    .line 1800
    iget v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->index:I

    iput v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    .line 1801
    iget-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    .line 1804
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_0
    return-void

    .line 1801
    .restart local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_1
    iget-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 4
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 504
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 505
    if-nez p1, :cond_0

    .line 506
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 507
    iget v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    .line 555
    :goto_0
    return-void

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 510
    iget v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j:Z

    .line 513
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    .line 550
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 551
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 553
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/im/ConversationService;->listConversationsByCategoryId(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const-wide/16 v6, 0x6

    .line 474
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 475
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    :cond_0
    invoke-static {}, Liap;->a()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    .line 489
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 490
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 491
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 492
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "hasMute":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 481
    .restart local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 482
    const/4 v1, 0x1

    goto :goto_2

    .line 485
    .end local v0    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_5
    if-nez v1, :cond_1

    .line 486
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    new-instance v3, Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v6, v7, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    .end local v1    # "hasMute":Z
    :cond_6
    return-void
.end method

.method a(Ljava/util/List;I)V
    .locals 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1615
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    :cond_0
    return-void

    .line 1618
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1619
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1620
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_2

    .line 1623
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1624
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1626
    .restart local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    if-eqz v1, :cond_2

    .line 1627
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "notifyToDataChange: conv id:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " type:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldza;->a(Ljava/lang/String;)V

    .line 1628
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v3, v1, p2}, Ldyy$b;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "efficientMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 471
    :goto_0
    return-void

    .line 448
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$23;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Z)V

    .line 467
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 468
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 470
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/im/CategoryService;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/CategoryService;->listCategorys(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method a(Lcom/alibaba/wukong/im/Conversation;ZZ)Z
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "force"    # Z
    .param p3, "clearViewHolder"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1696
    if-nez p1, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return v2

    .line 1701
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_im_not_disturb_only_at"

    .line 14083
    invoke-virtual {v4, v5, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1701
    if-eqz v4, :cond_3

    .line 1702
    invoke-static {p1}, Liap;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Ldyz;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1703
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 1708
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 1709
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "at_uid"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "10"

    .line 1710
    const-string/jumbo v5, "at_uid"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1711
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1716
    .end local v1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "category_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 1717
    goto :goto_0

    .line 1720
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v4

    if-lez v4, :cond_5

    move v2, v3

    .line 1721
    goto :goto_0

    .line 1724
    :cond_5
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    .line 1725
    goto :goto_0

    .line 1728
    :cond_6
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1729
    .local v0, "latestMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_7

    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    move v2, v3

    .line 1731
    goto/16 :goto_0

    .line 1734
    :cond_7
    if-eqz p2, :cond_9

    .line 1735
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1736
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    :cond_8
    if-eqz p3, :cond_0

    .line 1739
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldyy$b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1745
    :cond_9
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v4

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 15072
    iget-object v6, v4, Ldyu;->a:Ljava/util/Map;

    if-eqz v6, :cond_a

    .line 15073
    iget-object v4, v4, Ldyu;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1745
    :goto_1
    if-eqz v4, :cond_b

    move v2, v3

    .line 1747
    goto/16 :goto_0

    :cond_a
    move v4, v3

    .line 15075
    goto :goto_1

    .line 1750
    :cond_b
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 1751
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {v0}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-nez v4, :cond_c

    move v2, v3

    .line 1752
    goto/16 :goto_0

    .line 1755
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1756
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    :cond_d
    if-eqz p3, :cond_0

    .line 1759
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ldyy$b;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()Lcom/alibaba/wukong/im/ConversationListener;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    if-nez v0, :cond_0

    .line 1395
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    return-object v0
.end method

.method b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 8
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1315
    if-nez p1, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "mockCid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1322
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    invoke-static {p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/category/CategoryObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 1325
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    .line 1326
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;Z)V

    .line 1330
    const-string/jumbo v3, "SessionPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add category "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1421
    .local p1, "newConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v2}, Ldyy$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v1, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1426
    .local v0, "displayConversationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 4
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v3, 0x1

    .line 1661
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1674
    :cond_0
    return-void

    .line 1665
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1666
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 13692
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-virtual {p0, v0, v3, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/Conversation;ZZ)Z

    move-result v2

    .line 1669
    if-eqz v2, :cond_2

    .line 1670
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1671
    iget v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->S:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->S:I

    goto :goto_0
.end method

.method b(Z)Z
    .locals 1
    .param p1, "efficientMode"    # Z

    .prologue
    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v3, 0x0

    .line 1677
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1689
    :cond_0
    return-void

    .line 1681
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1682
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 13775
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-virtual {p0, v0, v3, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/Conversation;ZZ)Z

    move-result v2

    .line 1685
    if-eqz v2, :cond_2

    .line 1686
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method c(Ljava/util/List;Z)V
    .locals 12
    .param p2, "topChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2019
    .local p1, "newConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2021
    .end local p1    # "newConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    .local v7, "newConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-eqz v10, :cond_0

    .line 2022
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-interface {v10, v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filter(Ljava/util/List;)V

    .line 2025
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 2026
    .local v9, "size":I
    const/4 v1, 0x0

    .line 2027
    .local v1, "changed":Z
    const/4 v8, 0x0

    .line 2028
    .local v8, "notifyDataChange":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    .local v0, "addConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    add-int/lit8 v6, v9, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_8

    .line 2030
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 2032
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_1

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v10, v2}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ldza;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2033
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2034
    .local v4, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v4, :cond_7

    .line 2035
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2036
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2037
    .restart local v4    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v10, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v10, :cond_3

    .line 2038
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2039
    .local v3, "currentIndex":I
    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2040
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v4, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)I

    move-result v5

    .line 2041
    .local v5, "firstOldIndex":I
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2042
    if-le v5, v3, :cond_5

    .line 2043
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v10, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2047
    :goto_1
    const/4 v1, 0x1

    .line 2059
    .end local v3    # "currentIndex":I
    .end local v5    # "firstOldIndex":I
    :cond_3
    :goto_2
    const/4 v8, 0x1

    .line 2029
    .end local v4    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2045
    .restart local v3    # "currentIndex":I
    .restart local v4    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v5    # "firstOldIndex":I
    :cond_5
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 2051
    .end local v3    # "currentIndex":I
    .end local v5    # "firstOldIndex":I
    :cond_6
    iget-object v10, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v10, :cond_3

    .line 2052
    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2053
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    const/4 v11, -0x1

    invoke-direct {p0, v10, v4, v11}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)I

    move-result v5

    .line 2054
    .restart local v5    # "firstOldIndex":I
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2055
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    const/4 v1, 0x1

    goto :goto_2

    .line 2062
    .end local v5    # "firstOldIndex":I
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2067
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_8
    if-eqz v8, :cond_9

    .line 2068
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v10}, Ldyy$b;->a()V

    .line 2071
    :cond_9
    if-nez v1, :cond_b

    .line 2072
    if-eqz p2, :cond_a

    .line 2073
    const/4 v10, 0x2

    invoke-virtual {p0, v7, v10}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2075
    :cond_a
    const/4 v10, 0x3

    invoke-virtual {p0, v7, v10}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2077
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 2079
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2080
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Ljava/util/List;)V

    .line 2082
    :cond_c
    return-void
.end method

.method c(Z)V
    .locals 7
    .param p1, "efficientMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 558
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 559
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v1

    .line 10211
    iget-object v4, v1, Ldks;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10212
    iget-object v1, v1, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldkt;

    .line 10213
    invoke-virtual {v1}, Ldkt;->a()V

    goto :goto_0

    .line 562
    :cond_0
    iput v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->S:I

    .line 563
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 564
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 565
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    invoke-interface {v1, v4}, Ldyy$b;->a(Z)V

    .line 566
    const-string/jumbo v1, "im"

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    const-string/jumbo v5, "load session v2"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 569
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1, v6}, Ldyy$b;->e(Z)V

    .line 570
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->b()V

    .line 571
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->a()V

    .line 572
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v1, :cond_5

    .line 10302
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    if-nez v1, :cond_1

    .line 10303
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$21;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$21;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    .line 10315
    :cond_1
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->Q:Ldyu$a;

    .line 11087
    if-eqz v4, :cond_4

    .line 11088
    iget-object v5, v1, Ldyu;->b:Ljava/util/List;

    if-nez v5, :cond_2

    .line 11089
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Ldyu;->b:Ljava/util/List;

    .line 11091
    :cond_2
    iget-object v5, v1, Ldyu;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 11092
    iget-object v5, v1, Ldyu;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11095
    :cond_3
    invoke-static {}, Liaf;->c()J

    move-result-wide v4

    iput-wide v4, v1, Ldyu;->c:J

    .line 577
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e()V

    .line 578
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;J)V

    .line 700
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_6

    .line 701
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->getChildren(Lcom/alibaba/wukong/Callback;)V

    .line 709
    :goto_2
    return-void

    .line 575
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s()V

    goto :goto_1

    .line 703
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->v()J

    move-result-wide v4

    invoke-static {v4, v5}, Libb;->a(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 704
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v4}, Ldyy$b;->v()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/wukong/im/ConversationService;->listSecondaryConversationsByEntranceId(JLcom/alibaba/wukong/Callback;)V

    goto :goto_2

    .line 706
    :cond_7
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const/4 v4, 0x3

    invoke-interface {v1, v0, v6, v4}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    goto :goto_2
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "filterCount":I
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;Z)I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->a()V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    invoke-interface {v1, v0, v2}, Ldyy$b;->a(IF)V

    .line 383
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v1

    invoke-virtual {v1}, Ldyu;->b()V

    .line 384
    return-void
.end method

.method d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1812
    .local p1, "listParam":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2009
    :goto_0
    return-void

    .line 1815
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 1816
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    invoke-interface {v1, v2}, Ldyy$b;->a(Z)V

    .line 1817
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1818
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 414
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-nez v5, :cond_1

    invoke-static {}, Ldbv;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 419
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "dateStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 421
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v5, :cond_2

    .line 422
    const-string/jumbo v5, "sp_efficient_daily_active"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "currentDateStr":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    const-string/jumbo v5, "sp_efficient_daily_active"

    invoke-static {v5, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "minutes"

    invoke-static {}, Ldyz;->a()F

    move-result v6

    const/high16 v7, 0x42700000    # 60.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "SessionFragment"

    const-string/jumbo v7, "chat_focus_mode_click"

    invoke-interface {v5, v6, v7, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ldyz;->a(ZZ)V

    .line 432
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "currentDateStr":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ldbv;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    const-string/jumbo v5, "sp_at_me_daily_active"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "atMeDateStr":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 435
    const-string/jumbo v5, "sp_at_me_daily_active"

    invoke-static {v5, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "SessionFragment"

    const-string/jumbo v7, "chat_at_me_messages_click"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 2211
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 2216
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v0, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 2222
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->y:Lcjo$a;

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    if-eqz v0, :cond_1

    .line 2225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 2226
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->z:Lcjo$a;

    .line 2229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->A:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2230
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2232
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->A:Landroid/content/BroadcastReceiver;

    .line 2234
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->B:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 2235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2236
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->B:Landroid/content/BroadcastReceiver;

    .line 2239
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->E:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 2240
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2241
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->E:Landroid/content/BroadcastReceiver;

    .line 2244
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->C:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 2245
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2246
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->C:Landroid/content/BroadcastReceiver;

    .line 2249
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 2250
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2251
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->F:Landroid/content/BroadcastReceiver;

    .line 2254
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 2255
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2256
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->D:Landroid/content/BroadcastReceiver;

    .line 2259
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    if-eqz v0, :cond_9

    .line 2260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 15424
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_8

    .line 15425
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 15426
    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->h:Landroid/content/BroadcastReceiver;

    .line 15429
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c()V

    .line 15431
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c:J

    invoke-interface {v1, v2, v3}, Ldzh;->b(J)Z

    .line 15432
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->e:Ldzg;

    invoke-interface {v0}, Ldzg;->a()V

    .line 2261
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 2264
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->G:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 2265
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2266
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->G:Landroid/content/BroadcastReceiver;

    .line 2269
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->H:Lcom/alibaba/wukong/im/StatusNotifyListener;

    if-eqz v0, :cond_b

    .line 2270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->H:Lcom/alibaba/wukong/im/StatusNotifyListener;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->unregisterListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 2271
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->H:Lcom/alibaba/wukong/im/StatusNotifyListener;

    .line 2274
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->I:Lcmt$a;

    if-eqz v0, :cond_c

    .line 2275
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->I:Lcmt$a;

    invoke-virtual {v0, v1}, Lcmt;->b(Lcmt$a;)V

    .line 2276
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->I:Lcmt$a;

    .line 2279
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    if-eqz v0, :cond_d

    .line 2280
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/GroupNickService;->removeGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 2281
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->M:Lcom/alibaba/wukong/im/GroupNickListener;

    .line 2284
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    if-eqz v0, :cond_e

    .line 2285
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2286
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->N:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    .line 2289
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v0, :cond_f

    .line 2290
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 2291
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->O:Lcom/alibaba/wukong/im/ConversationListener;

    .line 2294
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    if-eqz v0, :cond_10

    .line 2295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->J:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->K:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 2298
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    if-eqz v0, :cond_11

    .line 2299
    const-class v0, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/CategoryService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/CategoryService;->removeCategoryChangeListener(Liak;)V

    .line 2300
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->P:Liak;

    .line 2303
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    if-eqz v0, :cond_12

    .line 2304
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    .line 16072
    iget-object v0, v0, Ldbu;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2305
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->L:Ldbt;

    .line 2308
    :cond_12
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->s()V

    .line 16343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->R:Ldyt$a;

    if-eqz v0, :cond_15

    .line 16344
    invoke-static {}, Ldyt;->a()Ldyt;

    move-result-object v2

    .line 17106
    iget-object v0, v2, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 17107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 17109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckm$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->t(Lckm$a;)V

    goto :goto_0

    .line 17112
    :cond_14
    iget-object v0, v2, Ldyt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17113
    iget-object v0, v2, Ldyt;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17114
    iput-object v4, v2, Ldyt;->c:Ldyt$a;

    .line 16345
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->R:Ldyt$a;

    .line 2310
    :cond_15
    return-void
.end method

.method j()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2119
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->u:Ldyw;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->t:Ldjh;

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 2856
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 2860
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 2864
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 2868
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 2872
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 2885
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 2889
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
