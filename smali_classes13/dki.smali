.class public final Ldki;
.super Ljava/lang/Object;
.source "PraiseBelongOrgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldki$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/wukong/im/Conversation;

.field public b:Z

.field c:Ldro;

.field d:Ldro;

.field e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldki;->b:Z

    .line 38
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "orgId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "userOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 154
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 158
    .local v0, "aLong":Ljava/lang/Long;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 159
    .local v1, "useOrgId":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "bList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    :cond_0
    const/4 v4, 0x0

    .line 184
    :cond_1
    return-object v4

    .line 174
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 175
    .local v1, "aSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 177
    .local v3, "bSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v0, "aSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 180
    .local v2, "bLong":Ljava/lang/Long;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Ldro;Ldki$a;)Ldro;
    .locals 10
    .param p1, "object"    # Ldro;
    .param p2, "listener"    # Ldki$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    .line 1191
    iget-boolean v5, p0, Ldki;->b:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Ldki;->c:Ldro;

    if-eq p1, v5, :cond_1

    iget-object v5, p0, Ldki;->d:Ldro;

    if-eq p1, v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 45
    :goto_0
    if-nez v5, :cond_2

    .line 46
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "PraiseBelongOrgManager"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "not need filter"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Ldki;->d:Ldro;

    .line 107
    :goto_1
    return-object v5

    .line 1191
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 49
    :cond_2
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p1, Ldro;->a:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p1, Ldro;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 53
    :cond_4
    iput-object p1, p0, Ldki;->c:Ldro;

    .line 54
    new-instance v5, Ldro;

    invoke-direct {v5}, Ldro;-><init>()V

    iput-object v5, p0, Ldki;->d:Ldro;

    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, "userOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 59
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 60
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 61
    .local v0, "oid":J
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "userOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .restart local v4    # "userOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v0    # "oid":J
    :cond_5
    :goto_2
    iget-object v5, p0, Ldki;->d:Ldro;

    iget-object v6, p1, Ldro;->a:Ljava/util/List;

    invoke-virtual {p0, v6, v4}, Ldki;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Ldro;->a:Ljava/util/List;

    .line 105
    iget-object v5, p0, Ldki;->d:Ldro;

    iget-wide v6, p1, Ldro;->b:J

    iput-wide v6, v5, Ldro;->b:J

    .line 106
    const/4 v5, 0x0

    iput-boolean v5, p0, Ldki;->b:Z

    .line 107
    iget-object v5, p0, Ldki;->d:Ldro;

    goto :goto_1

    .line 64
    :cond_6
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 66
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    .local v2, "uid":J
    iget-object v5, p0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_7

    iget-object v5, p0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v5, v6, v2

    if-eqz v5, :cond_8

    .line 69
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    iput-object v5, p0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 71
    :cond_8
    iget-object v5, p0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_9

    .line 72
    iget-object v5, p0, Ldki;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    goto :goto_2

    .line 75
    :cond_9
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "PraiseBelongOrgManager"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "getUserProfile Async"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    new-instance v6, Ldki$1;

    invoke-direct {v6, p0, p2}, Ldki$1;-><init>(Ldki;Ldki$a;)V

    invoke-virtual {v5, v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_2
.end method

.method a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldrn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ldrn;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "originEmotionObjects":Ljava/util/List;, "Ljava/util/List<Ldrn;>;"
    .local p2, "userOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 117
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v4, v1

    .line 144
    :cond_1
    return-object v4

    .line 120
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ldrn;>;"
    iget-object v5, p0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 124
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 125
    .local v2, "myUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v2, :cond_5

    .line 126
    .local v1, "myOrgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-static {p2, v1}, Ldki;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 132
    .end local v1    # "myOrgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "myUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrn;

    .line 133
    .local v0, "likeEmotionObject":Ldrn;
    iget-object v3, v0, Ldrn;->i:Ljava/util/List;

    .line 135
    .local v3, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 136
    invoke-static {v3, p2}, Ldki;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v0    # "likeEmotionObject":Ldrn;
    .end local v3    # "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "myUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    goto :goto_0

    .line 141
    .end local v2    # "myUserProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v0    # "likeEmotionObject":Ldrn;
    .restart local v3    # "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
