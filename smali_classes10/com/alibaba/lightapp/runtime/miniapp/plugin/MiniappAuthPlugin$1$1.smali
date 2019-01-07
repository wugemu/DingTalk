.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;
.super Ljava/lang/Object;
.source "MiniappAuthPlugin.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    .line 79
    .local v0, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->a:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;->userAuthOpenApp4MiniApp(Ljava/lang/String;Liyv;)V

    .line 91
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    const/16 v1, 0x2714

    const-string/jumbo v2, "authorization refused"

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;ILjava/lang/String;)V

    .line 96
    return-void
.end method
