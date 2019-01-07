.class public Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;
.super Lcom/alipay/mobile/security/bio/workspace/BioFragment;
.source "FaceCircleFragment.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/circle/ui/BioActivityEvent;


# static fields
.field protected static final REQUEST_CAMERA:I


# instance fields
.field protected mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->onAttach(Landroid/app/Activity;)V

    .line 27
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-object v1, v0

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 30
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be FaceCircleCallBack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onReceiveAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "type"    # Landroid/view/KeyEvent;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
