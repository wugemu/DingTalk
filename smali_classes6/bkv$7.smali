.class final Lbkv$7;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/view/View;ILcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lbkv$7;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lbkv$7;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbkv$7;->c:Landroid/view/View;

    iput p4, p0, Lbkv$7;->d:I

    iput-object p5, p0, Lbkv$7;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

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
    .line 625
    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkv$7;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 626
    iget-object v0, p0, Lbkv$7;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lbkv$7;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/4 v1, 0x5

    iget-object v2, p0, Lbkv$7;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbkv$7;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;ILjava/lang/String;Landroid/view/View;)V

    .line 629
    :cond_0
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    iget v1, p0, Lbkv$7;->d:I

    iget-object v2, p0, Lbkv$7;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 630
    iget-object v0, p0, Lbkv$7;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 631
    return-void
.end method
