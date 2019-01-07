.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$2;
.super Ljava/lang/Object;
.source "CMailSenderNickConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 131
    sget v0, Laxo$i;->dt_mail_signature_save_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->finish()V

    .line 133
    return-void
.end method
