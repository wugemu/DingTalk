.class public Lcom/alipay/mobile/security/faceauth/circle/ui/SampleCircleActivity;
.super Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;
.source "SampleCircleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceStatearg"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->SAMPLE:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/SampleCircleActivity;->mFaceCircleMode:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    .line 16
    const-string/jumbo v0, "SampleCircleActivity"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 17
    return-void
.end method
