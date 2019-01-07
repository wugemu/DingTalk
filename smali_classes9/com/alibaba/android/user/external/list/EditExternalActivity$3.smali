.class final Lcom/alibaba/android/user/external/list/EditExternalActivity$3;
.super Ljava/lang/Object;
.source "EditExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/EditExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    sget v4, Lezg$l;->dt_contact_extContact_reLocation:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$3;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    sget v4, Lezg$l;->dt_contact_extContact_deleteLocation:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/user/external/list/EditExternalActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/EditExternalActivity$3$1;-><init>(Lcom/alibaba/android/user/external/list/EditExternalActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 224
    return-void
.end method
