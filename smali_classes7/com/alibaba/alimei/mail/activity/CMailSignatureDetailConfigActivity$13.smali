.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "nick_name"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "position"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "org_name"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "mobile"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_signature_fields_mobile:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "address"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_signature_fields_address:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "fax"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_signature_fields_fax:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "zipcode"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_signature_fields_zipcode:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "extension"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_signature_fields_custom:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->n(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    sget v4, Laxo$i;->dt_mail_user_lable:I

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method
