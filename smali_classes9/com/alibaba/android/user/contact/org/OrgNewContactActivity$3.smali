.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 819
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    sget v2, Lezg$l;->choose_at_least_one_mem:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 833
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .line 823
    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v3

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->v(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    if-ge v2, v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->w(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lezg$l;->choose_limit:I

    :goto_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 823
    goto :goto_1

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I

    move-result v0

    goto :goto_2

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->w(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;->b:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    goto :goto_0
.end method
