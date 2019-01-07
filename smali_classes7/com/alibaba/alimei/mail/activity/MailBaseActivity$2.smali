.class final Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;
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
    .line 182
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$2;->b:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a()V

    .line 189
    return-void
.end method
