.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;
.super Ljava/lang/Object;
.source "ChooseImagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/util/List;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->b:Liny;

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
    .line 208
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 209
    .local v0, "ret":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "scene"

    const-string/jumbo v2, "assets"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
