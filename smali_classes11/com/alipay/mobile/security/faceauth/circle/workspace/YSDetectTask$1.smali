.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;
.super Ljava/lang/Object;
.source "YSDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

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
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/YSDetectTask$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_1
    return-void
.end method
