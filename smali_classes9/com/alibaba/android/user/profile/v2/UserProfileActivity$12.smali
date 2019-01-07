.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 591
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/ViewGroup;Z)V

    .line 592
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lezg$l;->sendmsg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->sendmsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 595
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->l(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/ViewGroup;Z)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->m(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/ViewGroup;Z)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$12;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->n(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Landroid/view/ViewGroup;Z)V

    .line 598
    return-void
.end method
