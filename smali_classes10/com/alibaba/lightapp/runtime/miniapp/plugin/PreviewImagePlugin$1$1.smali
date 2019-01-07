.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$1;
.super Ljava/lang/Object;
.source "PreviewImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;

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
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;->b:Liny;

    const/4 v1, 0x1

    const-string/jumbo v2, "param is null"

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 49
    return-void
.end method
