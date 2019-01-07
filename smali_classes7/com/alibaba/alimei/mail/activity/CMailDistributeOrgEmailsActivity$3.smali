.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;
.super Ljava/lang/Object;
.source "CMailDistributeOrgEmailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->finish()V

    .line 402
    return-void
.end method
