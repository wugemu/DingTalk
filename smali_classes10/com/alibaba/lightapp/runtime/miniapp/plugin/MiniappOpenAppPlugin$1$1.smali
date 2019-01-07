.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;
.super Ljava/lang/Object;
.source "MiniappOpenAppPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 181
    .local v4, "oid":J
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->g:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->c:Liny;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Liny;)V

    .line 182
    return-void
.end method
