.class final Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->b:Ljava/lang/String;

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
    .line 261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->c:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    return-void
.end method
