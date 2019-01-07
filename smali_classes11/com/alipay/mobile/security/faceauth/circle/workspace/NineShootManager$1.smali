.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager$1;
.super Ljava/lang/Object;
.source "NineShootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->shootFaceFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

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
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager$1;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/NineShootManager;Z)Z

    .line 49
    return-void
.end method
