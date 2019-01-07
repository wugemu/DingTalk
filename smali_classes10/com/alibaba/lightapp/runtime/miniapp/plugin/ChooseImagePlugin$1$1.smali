.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;
.super Ljava/lang/Object;
.source "ChooseImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->b:Liny;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 214
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Landroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Landroid/content/Context;)Landroid/content/Context;

    .line 216
    return-void
.end method
