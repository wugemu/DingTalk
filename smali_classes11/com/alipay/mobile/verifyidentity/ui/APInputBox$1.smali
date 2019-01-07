.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 258
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 259
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 260
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v1, v1, -0xc8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 261
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 263
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->val$parent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 265
    return-void
.end method
