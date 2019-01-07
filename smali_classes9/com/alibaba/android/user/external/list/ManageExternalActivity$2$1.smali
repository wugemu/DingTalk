.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 508
    packed-switch p2, :pswitch_data_0

    .line 520
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 521
    return-void

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    goto :goto_0

    .line 513
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2$1;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Z)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
