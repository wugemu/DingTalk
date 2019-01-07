.class final Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;
.super Ljava/lang/Object;
.source "ConcernListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 203
    check-cast p1, Ljava/util/List;

    .line 1213
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)Z

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->a:Z

    if-nez v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->h(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    .line 1224
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1228
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)Z

    .line 1235
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->j(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I

    .line 1238
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->a:Z

    if-nez v0, :cond_4

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Lfgh;

    move-result-object v0

    invoke-virtual {v0}, Lfgh;->notifyDataSetChanged()V

    .line 1249
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->h(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    goto :goto_0

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->b(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)Z

    goto :goto_1

    .line 1244
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->i(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Lfgh;

    move-result-object v0

    invoke-virtual {v0}, Lfgh;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$3;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->f(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    .line 273
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 262
    return-void
.end method
