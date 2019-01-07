.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$2;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$2;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$2;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1818
    return-void
.end method
