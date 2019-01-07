.class final Lcom/alipay/module/face/helper/c;
.super Ljava/lang/Object;
.source "FaceRpcRunnable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field final synthetic b:Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

.field final synthetic c:Lcom/alipay/module/face/helper/FaceRpcRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/module/face/helper/FaceRpcRunnable;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/module/face/helper/c;->c:Lcom/alipay/module/face/helper/FaceRpcRunnable;

    iput-object p2, p0, Lcom/alipay/module/face/helper/c;->a:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-object p3, p0, Lcom/alipay/module/face/helper/c;->b:Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/module/face/helper/c;->a:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/module/face/helper/c;->c:Lcom/alipay/module/face/helper/FaceRpcRunnable;

    iget-object v1, p0, Lcom/alipay/module/face/helper/c;->a:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v0, v1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/module/face/helper/FaceRpcRunnable;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/module/face/helper/c;->c:Lcom/alipay/module/face/helper/FaceRpcRunnable;

    iget-object v1, p0, Lcom/alipay/module/face/helper/c;->b:Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-virtual {v0, v1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_0
.end method
