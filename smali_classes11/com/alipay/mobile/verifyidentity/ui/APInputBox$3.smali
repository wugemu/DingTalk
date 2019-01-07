.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

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
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->onInputLayputTouchEvent()Z

    move-result v0

    return v0
.end method
