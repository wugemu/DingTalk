.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28$1;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Z)V

    .line 2184
    return-void
.end method
