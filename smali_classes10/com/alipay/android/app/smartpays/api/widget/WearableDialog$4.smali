.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    return-void
.end method
