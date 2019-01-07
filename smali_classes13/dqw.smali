.class public final Ldqw;
.super Ljava/lang/Object;
.source "ConversationUserProfileObject.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcgc;Z)Ldqw;
    .locals 10
    .param p0, "orgId"    # J
    .param p2, "userEmployeeInfoModel"    # Lcgc;
    .param p3, "canUseAlias"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "conversationUserProfileObject":Ldqw;
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcgc;->a:Lcgk;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcgc;->a:Lcgk;

    iget-object v3, v3, Lcgk;->a:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 104
    new-instance v0, Ldqw;

    .end local v0    # "conversationUserProfileObject":Ldqw;
    invoke-direct {v0}, Ldqw;-><init>()V

    .line 105
    .restart local v0    # "conversationUserProfileObject":Ldqw;
    iget-object v3, p2, Lcgc;->b:Lcet;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->j:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->g:Ljava/lang/String;

    .line 107
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->k:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->h:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p2, Lcgc;->a:Lcgk;

    iget-object v4, v4, Lcgk;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 112
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_2

    .line 113
    iput-object v2, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 117
    :goto_0
    iput-wide p0, v0, Ldqw;->d:J

    .line 118
    invoke-direct {v0, v6}, Ldqw;->a(Z)V

    .line 120
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v3, p0, p1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    .line 121
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v1

    .line 122
    .local v1, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz p3, :cond_3

    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    iput-boolean v6, v0, Ldqw;->i:Z

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    .line 161
    .end local v1    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    :goto_1
    return-object v0

    .line 115
    .restart local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v3, p2, Lcgc;->a:Lcgk;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    iput-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0

    .line 127
    .restart local v1    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_3
    if-eqz v1, :cond_6

    iget-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    if-eqz v3, :cond_6

    .line 128
    iget-object v3, p2, Lcgc;->b:Lcet;

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->c:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 130
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->d:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_4
    if-eqz p3, :cond_5

    .line 133
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_5
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 137
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_6
    iget-object v3, p2, Lcgc;->b:Lcet;

    if-eqz v3, :cond_7

    .line 142
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->c:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 143
    iget-object v3, p2, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->d:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    .line 145
    :cond_7
    if-eqz p3, :cond_8

    iget-object v3, v0, Ldqw;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 146
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, " ("

    aput-object v4, v3, v7

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, ")"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->j:Ljava/lang/String;

    .line 147
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v0, Ldqw;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v0, Ldqw;->j:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 149
    :cond_8
    if-eqz p3, :cond_9

    .line 150
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 153
    :cond_9
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->b:Ljava/lang/String;

    .line 154
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v3, v0, Ldqw;->c:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ldqw;
    .locals 1
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldqw;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ldqw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ldqw;
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p1, "canUseAlias"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "conversationUserProfileObject":Ldqw;
    if-eqz p0, :cond_0

    .line 73
    new-instance v0, Ldqw;

    .end local v0    # "conversationUserProfileObject":Ldqw;
    invoke-direct {v0}, Ldqw;-><init>()V

    .line 74
    .restart local v0    # "conversationUserProfileObject":Ldqw;
    iput-object p0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 75
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldqw;->a(Z)V

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldqw;->b:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldqw;->c:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldqw;->i:Z

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Ldqw;->b:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Ldqw;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "conversationUserProfileObjects":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    if-nez p0, :cond_1

    .line 184
    const/4 v1, 0x0

    .line 192
    :cond_0
    return-object v1

    .line 186
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 188
    .local v0, "conversationUserProfileObject":Ldqw;
    if-eqz v0, :cond_2

    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .param p1, "isEnterpriseGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2696
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldjl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-wide v0, p0, Ldqw;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    iput-wide v0, p0, Ldqw;->d:J

    .line 64
    :cond_0
    iget-object v0, p0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Ldqw;->e:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Ldqw;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldqw;->f:Ljava/lang/String;

    .line 66
    iput-boolean p1, p0, Ldqw;->k:Z

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/GroupNickObject;)V
    .locals 5
    .param p1, "groupNickObject"    # Lcom/alibaba/wukong/im/GroupNickObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 167
    iget-boolean v0, p0, Ldqw;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-boolean v0, p0, Ldqw;->k:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ldqw;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Ldqw;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Ldqw;->b:Ljava/lang/String;

    iget-object v1, p0, Ldqw;->j:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " ("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldqw;->b:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldqw;->b:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldqw;->c:Ljava/lang/String;

    goto :goto_0
.end method
