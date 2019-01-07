.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;
.super Lcmi;
.source "MiniappAuthPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    const/16 v1, 0x2713

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    check-cast p1, Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;Ljava/lang/String;)V

    .line 79
    return-void
.end method
