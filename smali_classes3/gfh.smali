.class public final Lgfh;
.super Lgfj;
.source "GroupFilePresenter.java"


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/alibaba/wukong/im/Conversation;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lgfe$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "fileId"    # Ljava/lang/String;
    .param p5, "spaceType"    # I
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "convId"    # Ljava/lang/String;
    .param p8, "msgId"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lgfj;-><init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    iput-object p7, p0, Lgfh;->c:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lgfh;->d:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lgfh;->n:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic a(Lgfh;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lgfh;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    .line 7204
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;-><init>()V

    .line 7205
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    .line 7206
    iget-object v1, p0, Lgfh;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    .line 7207
    iget-object v1, p0, Lgfh;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    .line 7208
    iget-object v1, p0, Lgfh;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 7209
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    .line 7210
    iget-object v1, p0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 7211
    iget-object v1, p0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    .line 7213
    :cond_0
    iget-object v1, p0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversation:Lcom/alibaba/wukong/im/Conversation;

    .line 7214
    iget-object v1, p0, Lgfh;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 7215
    iget-object v1, p0, Lgfh;->a:Lgfe$b;

    invoke-interface {v1}, Lgfe$b;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V

    .line 44
    return-void
.end method

.method static synthetic b(Lgfh;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic d(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic e(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic f(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic g(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic h(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic i(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic j(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic k(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic l(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic m(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method

.method static synthetic n(Lgfh;)Lgfe$b;
    .locals 1
    .param p0, "x0"    # Lgfh;

    .prologue
    .line 44
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    return-object v0
.end method


# virtual methods
.method protected final a(Lgjp;)V
    .locals 2
    .param p1, "memberData"    # Lgjp;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lgfh;->b(Lgjp;)V

    .line 127
    iget-object v0, p0, Lgfh;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lgfh;->i:Ljava/util/List;

    iget-object v1, p0, Lgfh;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    return-void
.end method

.method public final a(Ljava/util/List;)V
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
    .line 163
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 11
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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 167
    .line 2171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    invoke-static {p1}, Lgfh;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2176
    iget-object v1, p0, Lgfh;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgfh;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2177
    iget-object v1, p0, Lgfh;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2178
    iget-object v1, p0, Lgfh;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 3135
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 4109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2178
    invoke-static {p1, v4, v5}, Lgfh;->a(Ljava/util/List;J)V

    .line 2181
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2185
    iget-object v1, p0, Lgfh;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2186
    iget-object v1, p0, Lgfh;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2187
    iget-object v1, p0, Lgfh;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2188
    iget-object v1, p0, Lgfh;->a:Lgfe$b;

    invoke-interface {v1, v0}, Lgfe$b;->b(Ljava/util/List;)V

    .line 2190
    const/4 v1, 0x1

    iget-object v0, p0, Lgfh;->j:Ljava/util/List;

    .line 2191
    invoke-static {v0}, Lgfh;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lgfh;->c:Ljava/lang/String;

    iget-object v0, p0, Lgfh;->d:Ljava/lang/String;

    .line 5109
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2192
    new-instance v10, Lgfh$2;

    invoke-direct {v10, p0, p1}, Lgfh$2;-><init>(Lgfh;Ljava/util/List;)V

    move-object v0, p0

    move-object v4, v3

    .line 2190
    invoke-virtual/range {v0 .. v10}, Lgfh;->a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 242
    new-instance v6, Lgfh$3;

    invoke-direct {v6, p0, p1}, Lgfh$3;-><init>(Lgfh;Z)V

    .line 284
    .local v6, "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    iget-object v0, p0, Lgfh;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 285
    const-class v1, Lcma;

    iget-object v0, p0, Lgfh;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    check-cast v6, Lcma;

    .line 288
    .restart local v6    # "apiEventListener":Lcma;, "Lcma<Lgjp;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v0, p0, Lgfh;->f:Ljava/lang/String;

    .line 7109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 288
    iget-object v4, p0, Lgfh;->g:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lgon;->a(JLjava/lang/String;ZLcma;)V

    .line 289
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 64
    invoke-super {p0}, Lgfj;->b()V

    .line 65
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    iget-object v1, p0, Lgfh;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_onlindoc_invite_member:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgfe$b;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(Z)V

    .line 67
    invoke-virtual {p0}, Lgfh;->l()V

    .line 1072
    iget-object v0, p0, Lgfh;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    const-string/jumbo v0, ""

    iget-object v1, p0, Lgfh;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "GroupFilePresenter"

    const-string/jumbo v2, "loadConversation: null convId"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    .line 1076
    :goto_0
    return-void

    .line 1079
    :cond_0
    new-instance v1, Lgfh$1;

    invoke-direct {v1, p0}, Lgfh$1;-><init>(Lgfh;)V

    .line 1114
    iget-object v0, p0, Lgfh;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1115
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v0, p0, Lgfh;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v2, v1, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v1, v0

    .line 1117
    :cond_1
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->b()V

    .line 1118
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lgfh;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 220
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lgfh;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v0, p0, Lgfh;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    iget-object v1, p0, Lgfh;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lgfh;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->e()V

    .line 230
    iget-object v0, p0, Lgfh;->j:Ljava/util/List;

    invoke-static {v0}, Lgfh;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 231
    .local v11, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lgfh;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v0, p0, Lgfh;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    const/4 v1, 0x0

    iget-object v0, p0, Lgfh;->j:Ljava/util/List;

    .line 235
    invoke-static {v0}, Lgfh;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lgfh;->c:Ljava/lang/String;

    iget-object v0, p0, Lgfh;->d:Ljava/lang/String;

    .line 6109
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    move-object v0, p0

    move-object v4, v3

    move-object v10, v3

    .line 234
    invoke-virtual/range {v0 .. v10}, Lgfh;->a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-super {p0}, Lgfj;->c()V

    .line 134
    iget-object v3, p0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_2

    const/16 v1, 0x2710

    .line 135
    .local v1, "maxCount":I
    :goto_0
    if-gez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 138
    :cond_0
    iget-object v2, p0, Lgfh;->k:Ljava/util/ArrayList;

    .line 139
    .local v2, "unCheckUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lgfh;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "unCheckUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lgfh;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .restart local v2    # "unCheckUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lgfh;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v3, p0, Lgfh;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 145
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->o(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    iget-object v4, p0, Lgfh;->b:Landroid/content/Context;

    sget v5, Lfzs$h;->dt_cspace_onlindoc_invite_member:I

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    iget-object v4, p0, Lgfh;->c:Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v3

    const-string/jumbo v4, "20180208"

    .line 153
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 154
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v3, p0, Lgfh;->b:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 2053
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 154
    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 155
    return-void

    .line 134
    .end local v0    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .end local v1    # "maxCount":I
    .end local v2    # "unCheckUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    iget-object v3, p0, Lgfh;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
