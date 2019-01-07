.class public final Lfva$1;
.super Ljava/lang/Object;
.source "SearchProfessionCenterForRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfva;


# direct methods
.method public constructor <init>(Lfva;)V
    .locals 0
    .param p1, "this$0"    # Lfva;

    .prologue
    .line 93
    iput-object p1, p0, Lfva$1;->a:Lfva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lfva$1;->a:Lfva;

    .line 1024
    iget-object v1, v1, Lfva;->a:[Ljava/lang/String;

    .line 96
    if-eqz v1, :cond_0

    iget-object v1, p0, Lfva$1;->a:Lfva;

    .line 2024
    iget-object v1, v1, Lfva;->a:[Ljava/lang/String;

    .line 96
    array-length v1, v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfva$1;->a:Lfva;

    invoke-static {v1}, Lfva;->a(Lfva;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lfva$1;->a:Lfva;

    .line 3024
    iget-object v1, v1, Lfva;->a:[Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lfva$1;->a:Lfva;

    .line 4024
    iget v2, v2, Lfva;->g:I

    .line 100
    new-instance v3, Lfva$1$1;

    invoke-direct {v3, p0, v0}, Lfva$1$1;-><init>(Lfva$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
