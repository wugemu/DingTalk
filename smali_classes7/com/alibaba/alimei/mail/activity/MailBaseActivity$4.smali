.class final Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;
.super Ljava/lang/Object;
.source "MailBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget-object v1, Lacg;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    return-void
.end method
