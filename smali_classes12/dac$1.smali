.class final Ldac$1;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldac;


# direct methods
.method constructor <init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldac;

    .prologue
    .line 143
    iput-object p1, p0, Ldac$1;->c:Ldac;

    iput-object p2, p0, Ldac$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Ldac$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Ldac$1;->c:Ldac;

    iget-object v1, p0, Ldac$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Ldac$1;->b:Lcom/alibaba/wukong/im/Message;

    .line 1272
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1273
    sget v0, Lctk$i;->network_error:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1277
    :cond_0
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1278
    sget v4, Lctk$i;->chat_message_resend_confirm:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lctk$i;->sure:I

    new-instance v5, Ldac$5;

    invoke-direct {v5, v0, v1, v2}, Ldac$5;-><init>(Ldac;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V

    .line 1279
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Ldac$4;

    invoke-direct {v3, v0}, Ldac$4;-><init>(Ldac;)V

    .line 1321
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
