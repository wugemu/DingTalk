.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$5;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->init(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$5;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

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
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$5;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_BACK:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 415
    return-void
.end method
