.class final Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;
.super Ljava/lang/Object;
.source "FaceAlgorithmInfoPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->a(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$1;->a:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;->b(Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern;)Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceAlgorithmInfoPattern$Listener;->onReset()V

    .line 117
    :cond_0
    return-void
.end method
