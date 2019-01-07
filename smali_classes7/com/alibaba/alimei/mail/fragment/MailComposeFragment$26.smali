.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 3308
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lafk;

    move-result-object v0

    invoke-interface {v0}, Lafk;->a()V

    .line 3309
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->R(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 3310
    return-void
.end method
