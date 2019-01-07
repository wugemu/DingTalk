.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxf$a;

.field final synthetic b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;Lfxf$a;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 715
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 718
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 723
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->c:Ljava/lang/String;

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->h(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->r(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    sget v3, Lezg$l;->login_title_select_area:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->i(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->f(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->e(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->j(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->dt_contact_welcome_to_use_dingtalk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 743
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->i(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V

    .line 745
    return-void

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "+"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->a:Lfxf$a;

    iget-object v2, v2, Lfxf$a;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1$1;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8$1;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$8;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Lfrb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
