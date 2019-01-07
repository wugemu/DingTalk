.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    :goto_0
    return-void

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1951
    .local v1, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1952
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1957
    .local v2, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v3, v3, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v3, v3, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget v3, v3, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v4, v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcma;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcma;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    goto :goto_0
.end method
