.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 740
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->a:Landroid/widget/EditText;

    if-ne p1, v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->c()V

    .line 751
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 750
    .local v0, "mails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;->b:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/util/List;)V

    goto :goto_0
.end method
