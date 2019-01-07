.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;
.super Ljava/lang/Object;
.source "SelectorDepartmentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;->b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;->a:Landroid/widget/EditText;

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
    .line 479
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;->b:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Ljava/lang/String;)V

    .line 480
    return-void
.end method
