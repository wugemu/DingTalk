.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;
.super Ljava/lang/Object;
.source "YSDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

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
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V

    .line 86
    :cond_0
    return-void
.end method
