.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;
.super Ljava/lang/Thread;
.source "ModuleFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyInitThread"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->a:Ljava/lang/String;

    .line 103
    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->b:Ljava/lang/String;

    .line 104
    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->c:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->d:Ljava/util/Map;

    .line 106
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 107
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$200(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    sget v1, Ligh$h;->vi_network_unavailable:I

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Ligh$h;->vi_confirm:I

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)V

    move-object v1, v7

    move-object v5, v7

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string/jumbo v1, "Y"

    sget-object v2, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    iget-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyId(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    iget-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setToken(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sceneId\u6a21\u5f0f\uff0c\u66f4\u65b0\u4e86verifyId\u3001token"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$100(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_0
.end method
