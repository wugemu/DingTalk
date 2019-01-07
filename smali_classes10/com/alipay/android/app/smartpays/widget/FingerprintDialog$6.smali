.class Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->updateMsg(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

.field final synthetic val$color:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$300(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$300(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$6;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    return-void
.end method
