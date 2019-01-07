.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;
.super Ljava/lang/Object;
.source "MiniappOpenAppPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Ljava/lang/String;Landroid/content/Context;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Liny;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Ljava/lang/String;Landroid/content/Context;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->c:Liny;

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
    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 242
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$2;->c:Liny;

    invoke-static {v1}, Lhom;->a(Liny;)V

    .line 243
    return-void
.end method
