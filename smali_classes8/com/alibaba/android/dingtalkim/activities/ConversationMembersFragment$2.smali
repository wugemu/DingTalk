.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;


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

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v14, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 774
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 850
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    if-ne v4, v14, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 780
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 785
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->a:Ljava/util/List;

    .line 2211
    iget-boolean v8, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d:Z

    if-eqz v8, :cond_3

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e:Z

    if-nez v4, :cond_3

    .line 2212
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2213
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2214
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldqw;

    .line 2215
    iget-object v9, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 2216
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 786
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 787
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->a:Ljava/util/List;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 788
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 789
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 790
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 791
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    .line 3156
    iput-object v7, v4, Lcwe;->b:Ldqw;

    .line 792
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i:Ljava/util/List;

    .line 3160
    if-eqz v7, :cond_4

    .line 3161
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v8, v4, Lcwe;->t:Ljava/util/HashSet;

    .line 793
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/List;)V

    .line 794
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 795
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 796
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 797
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->A(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 798
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 3166
    iget-object v7, v4, Lcwe;->f:Ljava/util/HashMap;

    .line 798
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 801
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v4}, Lcwe;->notifyDataSetChanged()V

    .line 802
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    iget-object v4, v4, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 803
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_9

    move v1, v5

    .line 804
    .local v1, "isOwner":Z
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 3193
    iput-boolean v1, v4, Lcwe;->e:Z

    .line 806
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 807
    if-eqz v1, :cond_b

    .line 808
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_3
    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(Z)V

    .line 835
    :goto_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(I)V

    .line 838
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)I

    move-result v4

    if-eq v14, v4, :cond_8

    .line 839
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 840
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 843
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->D(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 844
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d()V

    .line 848
    .end local v0    # "i":I
    .end local v1    # "isOwner":Z
    .end local v2    # "size":I
    :goto_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c()V

    .line 849
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    goto/16 :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_9
    move v1, v6

    .line 803
    goto :goto_2

    .restart local v1    # "isOwner":Z
    :cond_a
    move v6, v5

    .line 808
    goto :goto_3

    .line 810
    :cond_b
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 832
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 810
    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_4

    .line 846
    .end local v0    # "i":I
    .end local v1    # "isOwner":Z
    .end local v2    # "size":I
    :cond_c
    sget v4, Lctk$i;->conversation_not_exist:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_5
.end method
