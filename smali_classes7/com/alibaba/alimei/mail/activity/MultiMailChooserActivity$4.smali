.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 297
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$4;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->finish()V

    .line 300
    :cond_0
    return-void
.end method
