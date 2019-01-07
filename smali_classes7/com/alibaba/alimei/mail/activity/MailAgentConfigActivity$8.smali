.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$8;
.super Ljava/lang/Object;
.source "MailAgentConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    .line 394
    return-void
.end method
