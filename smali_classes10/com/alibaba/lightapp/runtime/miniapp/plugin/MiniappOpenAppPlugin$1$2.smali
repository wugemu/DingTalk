.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$2;
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
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;->c:Liny;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lhom;->a(Liny;I)V

    .line 175
    return-void
.end method
