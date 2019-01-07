.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 816
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lfkn;

    move-result-object v0

    .line 1117
    iget-object v0, v0, Lfkn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 823
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 827
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v0

    if-eq v1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .line 828
    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 836
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->p(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 838
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    const-string/jumbo v1, "OrgContactFragment"

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-void

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$21;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->o(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
