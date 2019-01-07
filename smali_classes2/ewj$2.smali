.class final Lewj$2;
.super Ljava/lang/Object;
.source "TeleConfMenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewj;


# direct methods
.method constructor <init>(Lewj;)V
    .locals 0
    .param p1, "this$0"    # Lewj;

    .prologue
    .line 358
    iput-object p1, p0, Lewj$2;->a:Lewj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 361
    iget-object v0, p0, Lewj$2;->a:Lewj;

    .line 1048
    iget-object v0, v0, Lewj;->c:Lewj$b;

    .line 361
    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lewj$2;->a:Lewj;

    .line 2048
    iget-object v0, v0, Lewj;->c:Lewj$b;

    .line 362
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lewj$b;->a(I)V

    .line 364
    :cond_0
    return-void
.end method
