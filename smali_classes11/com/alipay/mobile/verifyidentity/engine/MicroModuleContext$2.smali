.class Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;
.super Ljava/lang/Object;
.source "MicroModuleContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field final synthetic val$moduleName:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$verifyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$moduleName:Ljava/lang/String;

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
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->access$000(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;)Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->finishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method
