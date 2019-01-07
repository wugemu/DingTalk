.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1$1;
.super Ljava/lang/Object;
.source "MailAgentConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    .line 806
    return-void
.end method
