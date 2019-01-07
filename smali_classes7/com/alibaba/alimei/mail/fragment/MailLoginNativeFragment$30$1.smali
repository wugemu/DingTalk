.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2260
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 2261
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v2, Laxo$i;->dt_cmail_manager_config_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 2262
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v2, Laxo$i;->dt_cmail_manager_config_message:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 4230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 2264
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v2, Laxo$i;->and_guide_text_i_know_that:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 2265
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30$1;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 4271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 2272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 4275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 2275
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 2276
    return-void
.end method
