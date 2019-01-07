.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;
.super Ljava/lang/Object;
.source "ConversationMembersWithRobotFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/util/List;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Z)Z

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 87
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getRobotMembers error, cid:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ljava/util/List;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 62
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    check-cast p1, Ljava/util/List;

    .line 2066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2068
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Z)Z

    .line 2069
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2073
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2074
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2076
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_1

    .line 2077
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 62
    :cond_1
    return-void

    .line 2071
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$2;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Z)Z

    goto :goto_0
.end method
