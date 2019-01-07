.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;
.super Ljava/lang/Object;
.source "MiniappSharePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;->a:Landroid/app/Activity;

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
    .line 254
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Landroid/content/Context;)V

    .line 255
    return-void
.end method
