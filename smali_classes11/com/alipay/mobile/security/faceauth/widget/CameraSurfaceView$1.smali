.class final Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;
.super Ljava/lang/Object;
.source "CameraSurfaceView.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/camera/AndroidCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$1;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->d:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;->onSurfaceError(I)V

    .line 65
    :cond_0
    return-void
.end method
