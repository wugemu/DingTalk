.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;
.super Ljava/lang/Object;
.source "CompressImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->f:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->e:Liny;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;Liny;Ljava/util/List;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;->e:Liny;

    const/16 v1, 0xb

    const-string/jumbo v2, "no file selected to compress"

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method
