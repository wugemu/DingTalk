.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$5;
.super Ljava/lang/Object;
.source "MailAgentConfigActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 239
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$5;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->f(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    move-result-object v0

    invoke-static {p2}, Lafh;->b(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method
