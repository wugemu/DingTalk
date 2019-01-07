.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;
.super Ljava/lang/Object;
.source "MultiMailChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->c:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->c:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 290
    return-void
.end method
