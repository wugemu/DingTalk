.class final Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;
.super Ljava/lang/Object;
.source "CMailNewUserImportConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;->b:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 159
    return-void
.end method
