.class final Lsl$a$1;
.super Ljava/lang/Object;
.source "CellPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsl$a;->a(Landroid/view/View;Lafn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafn;

.field final synthetic b:Lsl$a;


# direct methods
.method constructor <init>(Lsl$a;Lafn;)V
    .locals 0
    .param p1, "this$1"    # Lsl$a;

    .prologue
    .line 269
    iput-object p1, p0, Lsl$a$1;->b:Lsl$a;

    iput-object p2, p0, Lsl$a$1;->a:Lafn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lsl$a$1;->b:Lsl$a;

    iget-object v0, v0, Lsl$a;->a:Lsl;

    invoke-static {v0}, Lsl;->c(Lsl;)Lafo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lsl$a$1;->b:Lsl$a;

    iget-object v0, v0, Lsl$a;->a:Lsl;

    invoke-static {v0}, Lsl;->c(Lsl;)Lafo;

    move-result-object v0

    iget-object v1, p0, Lsl$a$1;->a:Lafn;

    invoke-interface {v0, v1, p1}, Lafo;->a(Lafn;Ljava/lang/Object;)V

    .line 275
    :cond_0
    return-void
.end method
