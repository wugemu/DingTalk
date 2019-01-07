.class public Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;
.super Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
.source "ConversationMembersWithRobotFragment.java"


# instance fields
.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 25
    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/util/List;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1062
    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1097
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    new-instance v2, Ldxf;

    invoke-direct {v2, v0}, Ldxf;-><init>(Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, p2, v2}, Ldxu;->d(Ljava/lang/String;Lcma;)V

    .line 25
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->k:Z

    return p1
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    .local p1, "displayResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    if-nez p1, :cond_1

    .line 134
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/ArrayList;)I

    move-result v1

    .line 146
    :cond_0
    return v1

    .line 138
    :cond_1
    const/4 v1, 0x1

    .line 139
    .local v1, "index":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldqw;

    .line 141
    .local v2, "object":Ldqw;
    if-eqz v2, :cond_2

    iget-object v3, v2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_2

    iget-object v3, v2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V
    .locals 4
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 30
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 33
    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 55
    .local v0, "memberCallback":Lcom/alibaba/wukong/Callback;
    invoke-super {p0, v0, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    const/4 v6, 0x1

    .line 121
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->j:I

    if-ne v1, v6, :cond_0

    new-instance v1, Lctq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->h:Ldqw;

    invoke-direct {v1, v2}, Lctq;-><init>(Ldqw;)V

    :goto_0
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_0
    new-instance v1, Lctp;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->h:Ldqw;

    invoke-direct {v1, v2}, Lctp;-><init>(Ldqw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "member sort error:"

    aput-object v5, v3, v4

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " cid:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 126
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final b(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    .local p1, "displayResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 114
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->k:Z

    if-eqz v2, :cond_4

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqw;

    .line 108
    .local v1, "userProfileObject":Ldqw;
    if-eqz v1, :cond_3

    iget-object v3, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_3

    iget-object v3, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "count":I
    .end local v1    # "userProfileObject":Ldqw;
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
