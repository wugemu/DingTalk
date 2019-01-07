.class final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
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

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->a:Z

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

    .line 191
    check-cast p1, Ljava/util/List;

    .line 1201
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)Z

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->a:Z

    if-nez v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->h(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    .line 1212
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1216
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)Z

    .line 1223
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->j(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->e(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)I

    .line 1226
    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->a:Z

    if-nez v0, :cond_4

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->m(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Lfwg;

    move-result-object v0

    invoke-virtual {v0}, Lfwg;->notifyDataSetChanged()V

    .line 1237
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->h(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    goto :goto_0

    .line 1219
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Z)Z

    goto :goto_1

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->i(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->m(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Lfwg;

    move-result-object v0

    invoke-virtual {v0}, Lfwg;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$3;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->f(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    .line 261
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 250
    return-void
.end method
