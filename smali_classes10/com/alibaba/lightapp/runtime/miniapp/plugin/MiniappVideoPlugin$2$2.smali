.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;
.super Ljava/lang/Object;
.source "MiniappVideoPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;->d:Liny;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V

    .line 280
    return-void
.end method
