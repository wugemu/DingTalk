.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->popAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

.field final synthetic val$angentId:Ljava/lang/String;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 3211
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$corpId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$angentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$type:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$data:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3214
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$5100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3215
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3216
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3217
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$5200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lhdn$k;->sure:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3223
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$5300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lhdn$k;->login_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3229
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3236
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 3237
    return-void
.end method
