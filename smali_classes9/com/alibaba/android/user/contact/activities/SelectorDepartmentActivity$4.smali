.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;
.super Ljava/lang/Object;
.source "SelectorDepartmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

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
    .line 353
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;II)V

    .line 354
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 355
    .local v1, "index":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 356
    .local v0, "count":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 357
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->h(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    .line 358
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4$1;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method
