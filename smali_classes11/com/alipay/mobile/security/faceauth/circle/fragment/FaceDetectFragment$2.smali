.class final Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;
.super Ljava/lang/Object;
.source "FaceDetectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v0

    .line 131
    .local v0, "level":I
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$2;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->setScreenBrightness(Landroid/app/Activity;I)V

    .line 132
    return-void
.end method
