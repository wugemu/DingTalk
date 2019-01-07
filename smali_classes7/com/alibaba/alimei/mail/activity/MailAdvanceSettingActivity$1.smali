.class final Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;
.super Ljava/lang/Object;
.source "MailAdvanceSettingActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->a(Landroid/widget/TextView;Ljava/lang/String;)Lxv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->c:Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->c:Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    check-cast p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->c:Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1108
    if-eqz p1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->c:Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity;

    iget v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lrx;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAdvanceSettingActivity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
