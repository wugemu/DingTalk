.class public final Leap;
.super Ljava/lang/Object;
.source "ConversationSettingPresenter.java"

# interfaces
.implements Leao$a;


# instance fields
.field a:Lcom/alibaba/wukong/im/Conversation;

.field b:Leao$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;Leao$b;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "view"    # Leao$b;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 43
    iput-object p2, p0, Leap;->b:Leao$b;

    .line 44
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leap;->b:Leao$b;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-direct {p0}, Leap;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->z(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_conversation_group_id_share:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "shareText":Ljava/lang/String;
    iget-object v1, p0, Leap;->b:Leao$b;

    invoke-interface {v1, v0}, Leao$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v2, p0, Leap;->b:Leao$b;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Leao$b;->c(Z)V

    .line 196
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 249
    :goto_1
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_1
    new-instance v0, Leap$4;

    invoke-direct {v0, p0, p2}, Leap$4;-><init>(Leap;Z)V

    .line 242
    .local v0, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_2

    .line 243
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 246
    .restart local v0    # "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz p2, :cond_3

    const-string/jumbo v1, "1"

    :goto_2
    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 59
    iput-object p1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 60
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Member$RoleType;)V
    .locals 10
    .param p1, "roleType"    # Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-direct {p0}, Leap;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupIdSearchable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->z(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 75
    .local v0, "showGroupId":Z
    :goto_1
    iget-object v1, p0, Leap;->b:Leao$b;

    if-eqz v0, :cond_1

    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v2

    :cond_1
    invoke-interface {v1, v2, v3}, Leao$b;->a(J)V

    .line 77
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p1, v1, v4}, Ldjt;->a(Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/im/Conversation;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->z(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Leap;->b:Leao$b;

    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->groupIdSearchable()Z

    move-result v2

    iget-object v3, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v6

    invoke-interface {v1, v4, v2, v6, v7}, Leao$b;->a(ZZJ)V

    .line 79
    iget-object v2, p0, Leap;->b:Leao$b;

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    invoke-interface {v2, v1}, Leao$b;->a_(Z)V

    .line 83
    :goto_3
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "ConversationSettingPresenter"

    const/4 v1, 0x6

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "groupIdShow groupId:"

    aput-object v1, v6, v5

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    const/4 v1, 0x2

    const-string/jumbo v4, ", searchable:"

    aput-object v4, v6, v1

    const/4 v4, 0x3

    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->groupIdSearchable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "1"

    :goto_4
    aput-object v1, v6, v4

    const/4 v1, 0x4

    const-string/jumbo v4, ", showGroupId"

    aput-object v4, v6, v1

    const/4 v4, 0x5

    if-eqz v0, :cond_6

    const-string/jumbo v1, "1"

    :goto_5
    aput-object v1, v6, v4

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v0    # "showGroupId":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showGroupId":Z
    goto/16 :goto_1

    :cond_3
    move v1, v5

    .line 79
    goto :goto_2

    .line 81
    :cond_4
    iget-object v1, p0, Leap;->b:Leao$b;

    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v2

    invoke-interface {v1, v5, v0, v2, v3}, Leao$b;->a(ZZJ)V

    goto :goto_3

    .line 83
    :cond_5
    const-string/jumbo v1, "0"

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "0"

    goto :goto_5
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "restricted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Leap$3;

    invoke-direct {v2, p0, p1}, Leap$3;-><init>(Leap;Z)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Conversation;->updateAtAllType(ILcom/alibaba/wukong/Callback;)V

    .line 189
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ZLcom/alibaba/wukong/im/Member$RoleType;)V
    .locals 8
    .param p1, "searchable"    # Z
    .param p2, "roleType"    # Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Leap;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p2, v2, v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/im/Conversation;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->z(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    if-eqz p1, :cond_2

    const-string/jumbo v2, "pref_key_show_searchable_tip"

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    const-string/jumbo v2, "pref_key_show_searchable_tip"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 96
    iget-object v2, p0, Leap;->b:Leao$b;

    invoke-interface {v2, v0, v1, v4, v5}, Leao$b;->a(ZZJ)V

    .line 97
    iget-object v2, p0, Leap;->b:Leao$b;

    iget-object v3, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v2, p1, v0}, Leao$b;->a(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->groupId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 102
    invoke-virtual {p0, p1}, Leap;->b(Z)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    new-instance v1, Leap$1;

    invoke-direct {v1, p0, p1}, Leap$1;-><init>(Leap;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->genGroupId(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Leap;->b:Leao$b;

    invoke-interface {v0, v1, v1, v4, v5}, Leao$b;->a(ZZJ)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v1, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leap;->b:Leao$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leap;->b:Leao$b;

    invoke-interface {v1}, Leao$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    new-instance v0, Leap$5;

    invoke-direct {v0, p0}, Leap$5;-><init>(Leap;)V

    .line 275
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Leap;->b:Leao$b;

    invoke-interface {v2}, Leao$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 276
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-object v2, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ldxx;->d(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method b(Z)V
    .locals 2
    .param p1, "searchable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Leap;->a:Lcom/alibaba/wukong/im/Conversation;

    new-instance v1, Leap$2;

    invoke-direct {v1, p0, p1}, Leap$2;-><init>(Leap;Z)V

    invoke-interface {v0, v1, p1, p1}, Lcom/alibaba/wukong/im/Conversation;->updateSearchable(Lcom/alibaba/wukong/Callback;ZZ)V

    .line 154
    return-void
.end method
