.class final Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;
.super Ljava/lang/Object;
.source "CMailNewOrganizationImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 174
    return-void
.end method
