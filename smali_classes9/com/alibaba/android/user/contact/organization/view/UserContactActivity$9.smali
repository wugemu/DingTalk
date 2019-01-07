.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1886
    check-cast p1, Ljava/util/List;

    .line 2889
    if-nez p1, :cond_3

    .line 2890
    iget-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->a:Ljava/util/List;

    .line 2895
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2896
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->i(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->setRequestSelectList(Ljava/util/List;)V

    .line 2898
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 2899
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2907
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 2908
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v3

    sub-int v1, v3, v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;I)I

    .line 2909
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->setChooseLimit(I)V

    .line 2914
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->b(Z)V

    .line 1886
    :cond_2
    return-void

    .line 2892
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2901
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2902
    if-eqz v0, :cond_6

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-lez v4, :cond_6

    .line 2903
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v1, v0

    move v0, v1

    :goto_3
    move v1, v0

    .line 2905
    goto :goto_2

    .line 2911
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    sget v1, Lezg$l;->choose_limit:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2912
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$9;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->finish()V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1924
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1920
    return-void
.end method
