.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;
.super Lhdj;
.source "RuntimeWebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/INuvaContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .param p2, "context"    # Lcom/alibaba/lightapp/runtime/INuvaContext;

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1370
    invoke-direct {p0, p2}, Lhdj;-><init>(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 1371
    return-void
.end method


# virtual methods
.method public final provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1377
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->g:Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 1390
    .local v0, "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    :cond_0
    :goto_0
    return-object v0

    .line 1379
    .end local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    :cond_1
    const-class v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h:Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    .restart local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    goto :goto_0

    .line 1381
    .end local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->c(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1382
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->c(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$c;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .restart local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    if-nez v0, :cond_0

    .line 1387
    .end local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    :cond_3
    invoke-super {p0, p1}, Lhdj;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .restart local v0    # "delegateModel":Lcom/alibaba/lightapp/runtime/Component$a;
    goto :goto_0
.end method
