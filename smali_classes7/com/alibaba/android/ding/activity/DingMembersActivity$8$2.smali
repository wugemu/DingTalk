.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity$8;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 359
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->a:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, "passedIn":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "allChooseIdentity":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 365
    .local v1, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->e(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->c:Lcom/alibaba/android/ding/activity/DingMembersActivity$8;

    iget-object v4, v4, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v0    # "allChooseIdentity":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v1    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "passedIn":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 373
    .restart local v0    # "allChooseIdentity":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v2    # "passedIn":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2$1;-><init>(Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method
