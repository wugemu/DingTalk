.class final Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;
.super Ljava/lang/Object;
.source "CMailDingtalkSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 300
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    sget v3, Laxo$i;->dt_cmail_dingtalk_suffix:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_1
    return-void

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 285
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 288
    return-void
.end method
