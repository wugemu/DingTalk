.class final Lbkl$10;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic e:Lbkl$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lbkl$a;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lbkl$10;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkl$10;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lbkl$10;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p4, p0, Lbkl$10;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p5, p0, Lbkl$10;->e:Lbkl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lbkl$10;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$10;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lbkl$10;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbkl$10;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbkl$10;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Lbkl$10;->d:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 149
    const-string/jumbo v0, "ding_detail_refuse_confirm_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lbkl$10;->e:Lbkl$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lbkl$10;->e:Lbkl$a;

    invoke-interface {v0}, Lbkl$a;->a()V

    .line 153
    :cond_0
    return-void
.end method
