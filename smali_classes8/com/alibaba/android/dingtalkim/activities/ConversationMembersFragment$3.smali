.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;JLcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->b:J

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 866
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "hitOwner":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqw;

    .line 869
    .local v1, "userProfileObject":Ldqw;
    if-eqz v1, :cond_4

    iget-object v3, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->b:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 870
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-object v1, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    .line 871
    const/4 v0, 0x1

    .line 874
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    if-ne v3, v9, :cond_1

    iget-wide v4, v1, Ldqw;->d:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 875
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3, v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Z)Z

    .line 878
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    .end local v0    # "hitOwner":Z
    .end local v1    # "userProfileObject":Ldqw;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->a:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;)V

    .line 894
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;

    if-eqz v2, :cond_3

    .line 895
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 902
    :cond_3
    return-void

    .line 881
    .restart local v0    # "hitOwner":Z
    .restart local v1    # "userProfileObject":Ldqw;
    :cond_4
    if-eqz v1, :cond_0

    .line 882
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    if-ne v3, v9, :cond_0

    iget-wide v4, v1, Ldqw;->d:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;->d:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3, v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Z)Z

    .line 884
    if-nez v0, :cond_2

    goto/16 :goto_0
.end method
