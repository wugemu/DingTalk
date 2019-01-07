.class final Lbbd$2$1;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbd$2;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbd$2;


# direct methods
.method constructor <init>(Lbbd$2;)V
    .locals 0
    .param p1, "this$1"    # Lbbd$2;

    .prologue
    .line 265
    iput-object p1, p0, Lbbd$2$1;->a:Lbbd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 276
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingSelectedUsersActivity]transformUidsToUserIdentities failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 265
    .line 1268
    iget-object v0, p0, Lbbd$2$1;->a:Lbbd$2;

    iget-object v0, v0, Lbbd$2;->a:Lbbd;

    .line 2056
    iget-object v0, v0, Lbbd;->h:Lbbc$b;

    .line 1268
    invoke-interface {v0}, Lbbc$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lbbd$2$1;->a:Lbbd$2;

    iget-object v0, v0, Lbbd$2;->a:Lbbd;

    .line 3056
    iget-object v0, v0, Lbbd;->h:Lbbc$b;

    .line 1269
    invoke-interface {v0}, Lbbc$b;->H_()V

    .line 1271
    :cond_0
    iget-object v0, p0, Lbbd$2$1;->a:Lbbd$2;

    iget-object v9, v0, Lbbd$2;->a:Lbbd;

    .line 4432
    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    .line 5404
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5405
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5406
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5407
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    goto :goto_0

    .line 4433
    :cond_2
    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    .line 5414
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5415
    sget-object v1, Lbbn;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4434
    :cond_3
    iget-object v0, v9, Lbbd;->h:Lbbc$b;

    invoke-virtual {v9}, Lbbd;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbbc$b;->c(Ljava/lang/String;)V

    .line 4435
    iget-object v0, v9, Lbbd;->h:Lbbc$b;

    iget-object v1, v9, Lbbd;->f:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lbbc$b;->a(Ljava/util/List;)V

    .line 4436
    iget-object v1, v9, Lbbd;->h:Lbbc$b;

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v7

    :goto_1
    invoke-interface {v1, v0}, Lbbc$b;->f(Z)V

    .line 4437
    iget-object v1, v9, Lbbd;->h:Lbbc$b;

    iget-object v0, v9, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    .line 4439
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    .line 4437
    :goto_2
    invoke-interface {v1, v0}, Lbbc$b;->c(Z)V

    .line 4440
    iget-object v1, v9, Lbbd;->h:Lbbc$b;

    .line 6253
    iget-object v0, v9, Lbbd;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, v9, Lbbd;->g:Ljava/util/ArrayList;

    .line 6255
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v9, Lbbd;->f:Ljava/util/ArrayList;

    .line 6256
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v9, Lbbd;->g:Ljava/util/ArrayList;

    .line 6257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v9, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_6

    move v0, v7

    .line 4440
    :goto_3
    invoke-interface {v1, v0}, Lbbc$b;->d(Z)V

    .line 6445
    new-instance v0, Laym;

    iget-object v1, v9, Lbbd;->a:Landroid/app/Activity;

    iget-object v2, v9, Lbbd;->f:Ljava/util/ArrayList;

    iget-object v3, v9, Lbbd;->g:Ljava/util/ArrayList;

    iget-object v4, v9, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 6448
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getDisabledIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v9, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 6449
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->isSingleChooseMode()Z

    move-result v5

    iget-object v6, v9, Lbbd;->g:Ljava/util/ArrayList;

    .line 6450
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    invoke-direct/range {v0 .. v6}, Laym;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    iput-object v0, v9, Lbbd;->c:Laym;

    .line 6451
    iget-object v0, v9, Lbbd;->c:Laym;

    new-instance v1, Lbbd$6;

    invoke-direct {v1, v9}, Lbbd$6;-><init>(Lbbd;)V

    .line 7119
    iput-object v1, v0, Laym;->f:Laym$a;

    .line 6495
    iget-object v0, v9, Lbbd;->h:Lbbc$b;

    iget-object v1, v9, Lbbd;->c:Laym;

    invoke-interface {v0, v1}, Lbbc$b;->a(Landroid/widget/BaseAdapter;)V

    .line 6496
    iget-object v0, v9, Lbbd;->h:Lbbc$b;

    iget-object v1, v9, Lbbd;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 6497
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getIdentityFlag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "identifier_recorder_selector"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v9, Lbbd;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, v9, Lbbd;->f:Ljava/util/ArrayList;

    .line 6499
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6496
    :goto_5
    invoke-interface {v0, v7}, Lbbc$b;->g(Z)V

    .line 265
    return-void

    :cond_4
    move v0, v8

    .line 4436
    goto/16 :goto_1

    :cond_5
    move v0, v8

    .line 4439
    goto/16 :goto_2

    :cond_6
    move v0, v8

    .line 6257
    goto :goto_3

    .line 6450
    :cond_7
    iget-object v6, v9, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    goto :goto_4

    :cond_8
    move v7, v8

    .line 6499
    goto :goto_5
.end method
