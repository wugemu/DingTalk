.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V
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
    .line 1296
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getMsg1()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getMsg2()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getPositive()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getNegative()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v9}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->isShowIcon()Z

    move-result v9

    invoke-interface/range {v0 .. v9}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V

    .line 1302
    :cond_0
    return-void
.end method
