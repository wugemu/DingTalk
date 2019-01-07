.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 648
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;II)V

    .line 649
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 650
    .local v1, "index":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 651
    .local v0, "count":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 652
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 653
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->q(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13$1;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 660
    return-void
.end method
