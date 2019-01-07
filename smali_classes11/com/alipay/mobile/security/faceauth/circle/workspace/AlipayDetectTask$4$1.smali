.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;
.super Ljava/lang/Object;
.source "AlipayDetectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;->b(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlipayDetectTask;)V

    .line 336
    :cond_0
    return-void
.end method
