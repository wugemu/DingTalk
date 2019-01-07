.class final Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;
.super Ljava/lang/Object;
.source "ExternalContactSearchFragment.java"

# interfaces
.implements Lcif$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->n_()Lcif$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "selectedList"    # Ljava/lang/Object;
    .param p2, "unCheckableList"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcif;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->b(Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcif;

    move-result-object v0

    .line 1031
    iget v0, v0, Lcif;->c:I

    .line 90
    sget v1, Lcif;->b:I

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->k:Lemz;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->k:Lemz;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1639
    iput-object v0, v1, Lemz;->c:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->k:Lemz;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 1643
    iput-object v0, v1, Lemz;->d:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->k:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    check-cast p1, Ljava/util/List;

    .end local p1    # "selectedList":Ljava/lang/Object;
    iput-object p1, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->P:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    check-cast p2, Ljava/util/List;

    .end local p2    # "unCheckableList":Ljava/lang/Object;
    iput-object p2, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->Q:Ljava/util/List;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget v0, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->c(Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->P:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->P:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->d(Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->P:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    return-void
.end method
