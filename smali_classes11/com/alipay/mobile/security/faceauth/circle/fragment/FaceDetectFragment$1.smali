.class final Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;
.super Ljava/lang/Object;
.source "FaceDetectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->onResume()V
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
    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

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
    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "level":I
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->setScreenBrightness(Landroid/app/Activity;I)V

    .line 114
    :cond_0
    return-void
.end method
