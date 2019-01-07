.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2$1;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;->countdown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;

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
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_TIMEOUT:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 209
    return-void
.end method
