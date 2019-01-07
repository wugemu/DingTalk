.class final Lchz$1;
.super Ljava/lang/Object;
.source "BaseSelectModeHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lchz;


# direct methods
.method constructor <init>(Lchz;I)V
    .locals 0
    .param p1, "this$0"    # Lchz;

    .prologue
    .line 67
    iput-object p1, p0, Lchz$1;->b:Lchz;

    iput p2, p0, Lchz$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lchz$1;->b:Lchz;

    .line 1014
    iget-object v0, v0, Lchz;->b:Lcia;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lchz$1;->b:Lchz;

    .line 2014
    iget-object v0, v0, Lchz;->b:Lcia;

    .line 71
    iget v1, p0, Lchz$1;->a:I

    invoke-virtual {v0, v1}, Lcia;->a(I)V

    .line 73
    :cond_0
    return-void
.end method
