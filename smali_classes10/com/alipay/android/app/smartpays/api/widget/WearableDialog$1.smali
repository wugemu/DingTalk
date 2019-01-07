.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$listener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;->val$listener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$000(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    .line 75
    return-void
.end method
