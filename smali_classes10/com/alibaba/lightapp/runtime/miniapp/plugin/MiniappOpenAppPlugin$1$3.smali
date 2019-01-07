.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;
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
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappOpenAppPlugin$1$3;->a:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 169
    return-void
.end method
