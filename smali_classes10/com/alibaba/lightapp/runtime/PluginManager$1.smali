.class final Lcom/alibaba/lightapp/runtime/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v0}, Lhde;->reload()V

    .line 266
    :cond_0
    return-void
.end method
