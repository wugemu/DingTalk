.class public Lgff;
.super Ljava/lang/Object;
.source "SpaceMembersPresenter.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;
.implements Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;
.implements Lgfe$a;


# instance fields
.field protected a:Lgfe$b;

.field protected b:Landroid/content/Context;

.field private c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;


# direct methods
.method public constructor <init>(Lgfe$b;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Lgfe$b;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgff;->b:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfe$b;

    iput-object v0, p0, Lgff;->a:Lgfe$b;

    .line 49
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;)V

    iput-object v0, p0, Lgff;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 50
    iget-object v0, p0, Lgff;->a:Lgfe$b;

    invoke-interface {v0, p0}, Lgfe$b;->setPresenter(Lcjd;)V

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p2, :cond_0

    .line 145
    invoke-interface {p2, p0, p1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method static b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V
    .locals 0
    .param p0, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1, p0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string/jumbo v0, "20180208"

    return-object v0
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V
    .locals 10
    .param p1, "member"    # Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v8, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null member value"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 125
    :goto_0
    return-void

    .line 3175
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0

    .line 4131
    :cond_1
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 123
    const-string/jumbo v0, ""

    const-string/jumbo v1, "invalid member type"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 4150
    :pswitch_0
    if-eqz p1, :cond_2

    .line 5135
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 4150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5143
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->c:Ljava/lang/String;

    .line 4150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4151
    :cond_2
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null id or orgId"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 5175
    :cond_3
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 4154
    if-eqz v0, :cond_4

    .line 4155
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto :goto_0

    .line 4159
    :cond_4
    new-instance v1, Lgff$1;

    invoke-direct {v1, p0, p1, p2}, Lgff$1;-><init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 4197
    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 4198
    const-class v2, Lcma;

    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4200
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 6143
    iget-object v2, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->c:Ljava/lang/String;

    .line 7109
    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7135
    iget-object v4, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 8109
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4201
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4200
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/util/List;Lcma;)V

    goto :goto_0

    .line 8205
    :pswitch_1
    if-eqz p1, :cond_5

    .line 9135
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 8205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8206
    :cond_5
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null id"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 9175
    :cond_6
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 8209
    if-eqz v0, :cond_7

    .line 8210
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto/16 :goto_0

    .line 8214
    :cond_7
    new-instance v1, Lgff$2;

    invoke-direct {v1, p0, p1, p2}, Lgff$2;-><init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 8248
    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 8249
    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v1, v0

    .line 8251
    :cond_8
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 10135
    iget-object v2, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 8251
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10255
    :pswitch_2
    if-eqz p1, :cond_9

    .line 11135
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 10255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10256
    :cond_9
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null id"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 11175
    :cond_a
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 10259
    if-eqz v0, :cond_b

    .line 10260
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto/16 :goto_0

    .line 10264
    :cond_b
    new-instance v6, Lgff$3;

    invoke-direct {v6, p0, p1, p2}, Lgff$3;-><init>(Lgff;Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    .line 10297
    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 10298
    const-class v1, Lcma;

    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v6, v0

    .line 10300
    :cond_c
    invoke-static {}, Lgpq;->a()Lgpq;

    move-result-object v0

    iget-object v1, p0, Lgff;->b:Landroid/content/Context;

    .line 12135
    iget-object v2, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 13109
    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 13143
    iget-object v4, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->c:Ljava/lang/String;

    .line 14109
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 10300
    invoke-virtual/range {v0 .. v6}, Lgpq;->a(Landroid/content/Context;JJLcma;)V

    goto/16 :goto_0

    .line 14305
    :pswitch_3
    if-eqz p1, :cond_d

    .line 15135
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 14305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14306
    :cond_d
    const-string/jumbo v0, ""

    const-string/jumbo v1, "null id"

    invoke-static {v0, v1, p2}, Lgff;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 15175
    :cond_e
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 14309
    if-eqz v0, :cond_f

    .line 14310
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto/16 :goto_0

    .line 14314
    :cond_f
    invoke-static {}, Lgpz;->a()Lgpz;

    .line 16135
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 17109
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 14314
    invoke-static {v0, v1}, Lgpz;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 14315
    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 17155
    :goto_2
    iput-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 14316
    const/4 v0, 0x1

    .line 17179
    iput-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 14317
    invoke-static {p1, p2}, Lgff;->b(Lcom/alibaba/dingtalk/cspace/functions/members/Member;Lcma;)V

    goto/16 :goto_0

    .line 14315
    :cond_10
    iget-object v0, p0, Lgff;->b:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_acl_member_org:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 135
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lgff;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 2136
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2139
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;

    invoke-direct {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)V

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    .line 2140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2141
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2142
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a()Ldq;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lgff;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 3119
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 3122
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;B)V

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    .line 3123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3124
    const-string/jumbo v2, "choose_enterprise_group_conversation"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3125
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a()Ldq;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->e()V

    .line 88
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lgff;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->f()V

    .line 93
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lgff;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 1146
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1147
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a()Ldq;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1148
    iput-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->b:Landroid/content/BroadcastReceiver;

    .line 64
    :cond_0
    iget-object v0, p0, Lgff;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 2129
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 2130
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a()Ldq;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2131
    iput-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a:Landroid/content/BroadcastReceiver;

    .line 65
    :cond_1
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
