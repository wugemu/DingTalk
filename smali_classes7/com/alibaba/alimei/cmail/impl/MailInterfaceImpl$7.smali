.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcma;

.field final synthetic g:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->g:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object p6, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->f:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1931
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1933
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxo$i;->dt_mail_sharetoconv_confirm:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1934
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxo$i;->send:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1941
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxo$i;->dt_cmail_cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7$2;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1947
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1948
    return-void
.end method
