.class final Lcom/alibaba/lightapp/runtime/PluginManager$4;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

.field final synthetic c:Ljava/lang/reflect/Method;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/Plugin;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager;Lcom/alibaba/lightapp/runtime/ActionRequest;Lcom/alibaba/lightapp/runtime/PluginManager$a;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->c:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->d:Lcom/alibaba/lightapp/runtime/Plugin;

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
    .line 595
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1054
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    .line 595
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    new-instance v2, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager$4;)V

    invoke-interface {v0, v1, v2}, Lhdk;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;Lhdd;)V

    .line 625
    return-void
.end method
