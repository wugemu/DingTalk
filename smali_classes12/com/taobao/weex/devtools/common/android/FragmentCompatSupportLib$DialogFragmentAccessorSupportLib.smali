.class Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;
.super Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;
.source "FragmentCompatSupportLib.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogFragmentAccessorSupportLib"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;",
        "Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor",
        "<",
        "Landroid/support/v4/app/DialogFragment;",
        "Landroid/support/v4/app/Fragment;",
        "Lcn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentAccessorSupportLib;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$1;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialog(Landroid/support/v4/app/DialogFragment;)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogFragment"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDialog(Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$DialogFragmentAccessorSupportLib;->getDialog(Landroid/support/v4/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
