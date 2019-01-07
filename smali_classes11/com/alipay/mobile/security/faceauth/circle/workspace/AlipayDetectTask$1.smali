.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;
.super Ljava/lang/Object;
.source "AlipayDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTipContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->showFaceStatus()Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_1
    return-void
.end method
