.class final Lffx$3$1;
.super Ljava/lang/Object;
.source "ActiveInvitePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffx$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lffx$3;


# direct methods
.method constructor <init>(Lffx$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lffx$3;

    .prologue
    .line 249
    iput-object p1, p0, Lffx$3$1;->b:Lffx$3;

    iput-object p2, p0, Lffx$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 252
    iget-object v0, p0, Lffx$3$1;->b:Lffx$3;

    iget-object v0, v0, Lffx$3;->b:Lffx;

    .line 1053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lffx$3$1;->b:Lffx$3;

    iget-object v0, v0, Lffx$3;->b:Lffx;

    .line 2053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 253
    invoke-interface {v0}, Lffw;->b()V

    .line 254
    iget-object v0, p0, Lffx$3$1;->b:Lffx$3;

    iget-object v0, v0, Lffx$3;->b:Lffx;

    .line 3053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 254
    iget-object v1, p0, Lffx$3$1;->b:Lffx$3;

    iget v1, v1, Lffx$3;->a:I

    iget-object v2, p0, Lffx$3$1;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lffw;->a(ILjava/util/List;)V

    .line 256
    :cond_0
    return-void
.end method
