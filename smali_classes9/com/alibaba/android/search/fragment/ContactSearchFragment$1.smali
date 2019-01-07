.class final Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;
.super Ljava/lang/Object;
.source "ContactSearchFragment.java"

# interfaces
.implements Lcif$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/ContactSearchFragment;->n_()Lcif$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

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
    .line 120
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcif;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->b(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcif;

    move-result-object v0

    .line 1031
    iget v0, v0, Lcif;->c:I

    .line 120
    sget v1, Lcif;->b:I

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v1, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1639
    iput-object v0, v1, Lemz;->c:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v1, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 1643
    iput-object v0, v1, Lemz;->d:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    invoke-virtual {v0}, Lemz;->notifyDataSetChanged()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    check-cast p1, Ljava/util/List;

    .end local p1    # "selectedList":Ljava/lang/Object;
    iput-object p1, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    check-cast p2, Ljava/util/List;

    .end local p2    # "unCheckableList":Ljava/lang/Object;
    iput-object p2, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->M:Ljava/util/List;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget v0, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->c(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->d(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    return-void
.end method
