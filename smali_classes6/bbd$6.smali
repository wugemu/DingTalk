.class final Lbbd$6;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Laym$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbd;


# direct methods
.method constructor <init>(Lbbd;)V
    .locals 0
    .param p1, "this$0"    # Lbbd;

    .prologue
    .line 451
    iput-object p1, p0, Lbbd$6;->a:Lbbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 1056
    iget-object v0, v0, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 454
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 2056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 3056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 4056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 5056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 6048
    if-eqz v0, :cond_2

    .line 6051
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6052
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6053
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6054
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 6055
    if-eqz v0, :cond_1

    .line 6056
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6059
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6062
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 460
    :cond_2
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 7056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lbbd$6;->a:Lbbd;

    .line 8056
    iget-object v1, v1, Lbbd;->f:Ljava/util/ArrayList;

    .line 460
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 461
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 9056
    iget-object v0, v0, Lbbd;->h:Lbbc$b;

    .line 461
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbbc$b;->d(Z)V

    .line 463
    :cond_3
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 10056
    iget-object v0, v0, Lbbd;->h:Lbbc$b;

    .line 463
    iget-object v1, p0, Lbbd$6;->a:Lbbd;

    .line 11056
    invoke-virtual {v1}, Lbbd;->j()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-interface {v0, v1}, Lbbc$b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 469
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 473
    .local v2, "uid":J
    iget-object v4, p0, Lbbd$6;->a:Lbbd;

    .line 12056
    iget-object v4, v4, Lbbd;->g:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 476
    .local v1, "selectedUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 481
    .end local v1    # "selectedUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget-object v4, p0, Lbbd$6;->a:Lbbd;

    .line 13056
    iget-object v4, v4, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 481
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    iget-object v4, p0, Lbbd$6;->a:Lbbd;

    .line 14056
    iget-object v4, v4, Lbbd;->h:Lbbc$b;

    .line 482
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lbbc$b;->d(Z)V

    .line 483
    iget-object v4, p0, Lbbd$6;->a:Lbbd;

    .line 15056
    iget-object v4, v4, Lbbd;->h:Lbbc$b;

    .line 483
    iget-object v5, p0, Lbbd$6;->a:Lbbd;

    .line 16056
    invoke-virtual {v5}, Lbbd;->j()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-interface {v4, v5}, Lbbc$b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 1
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 489
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 17056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    if-eqz p1, :cond_0

    .line 491
    iget-object v0, p0, Lbbd$6;->a:Lbbd;

    .line 18056
    iget-object v0, v0, Lbbd;->g:Ljava/util/ArrayList;

    .line 491
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_0
    return-void
.end method
