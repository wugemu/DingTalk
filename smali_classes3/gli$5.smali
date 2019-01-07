.class final Lgli$5;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgli;


# direct methods
.method constructor <init>(Lgli;)V
    .locals 0
    .param p1, "this$0"    # Lgli;

    .prologue
    .line 250
    iput-object p1, p0, Lgli$5;->a:Lgli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    iget-object v0, p0, Lgli$5;->a:Lgli;

    .line 1040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 254
    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lgli$5;->a:Lgli;

    .line 2040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 256
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method
