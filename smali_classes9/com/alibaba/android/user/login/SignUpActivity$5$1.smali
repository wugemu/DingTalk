.class final Lcom/alibaba/android/user/login/SignUpActivity$5$1;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxf$a;

.field final synthetic b:Lcom/alibaba/android/user/login/SignUpActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity$5;Lfxf$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/SignUpActivity$5;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/SignUpActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->c:Ljava/lang/String;

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v1, v1, Lfxf$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v0, v0, Lfxf$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->h:Landroid/view/View;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    sget v3, Lezg$l;->login_title_select_area:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    .line 290
    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 289
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 292
    return-void

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->b:Lcom/alibaba/android/user/login/SignUpActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity$5;->a:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->a:Landroid/widget/TextView;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "+"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$5$1;->a:Lfxf$a;

    iget-object v2, v2, Lfxf$a;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
