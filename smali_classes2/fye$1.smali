.class final Lfye$1;
.super Ljava/lang/Object;
.source "UserItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfye;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfye;


# direct methods
.method constructor <init>(Lfye;)V
    .locals 0
    .param p1, "this$0"    # Lfye;

    .prologue
    .line 57
    iput-object p1, p0, Lfye$1;->a:Lfye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lfye$1;->a:Lfye;

    iget-object v0, v0, Lfye;->b:Lfxw;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lfye$1;->a:Lfye;

    iget-object v0, v0, Lfye;->b:Lfxw;

    iget-object v1, p0, Lfye$1;->a:Lfye;

    .line 1035
    iget v1, v1, Lfye;->d:I

    .line 63
    invoke-interface {v0, v1}, Lfxw;->a(I)V

    goto :goto_0
.end method
