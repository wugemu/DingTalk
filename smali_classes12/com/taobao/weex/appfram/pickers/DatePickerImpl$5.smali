.class final Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;
.super Ljava/lang/Object;
.source "DatePickerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/DatePickerImpl;->setButtonText(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$dialog:Landroid/app/AlertDialog;

    iput p2, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$which:I

    iput-object p3, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$dialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$which:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 188
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 190
    iget-object v1, p0, Lcom/taobao/weex/appfram/pickers/DatePickerImpl$5;->val$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method
