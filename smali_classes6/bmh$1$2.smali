.class final Lbmh$1$2;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmh$1;->showMeshResult(Lbmp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmp;

.field final synthetic b:Lbmh$1;


# direct methods
.method constructor <init>(Lbmh$1;Lbmp;)V
    .locals 0
    .param p1, "this$1"    # Lbmh$1;

    .prologue
    .line 111
    iput-object p1, p0, Lbmh$1$2;->b:Lbmh$1;

    iput-object p2, p0, Lbmh$1$2;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lbmh$1$2;->b:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    .line 1033
    iget-object v0, v0, Lbmh;->c:Lblr;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lbmh$1$2;->b:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    .line 2033
    iget-object v0, v0, Lbmh;->c:Lblr;

    .line 115
    iget-object v1, p0, Lbmh$1$2;->a:Lbmp;

    invoke-interface {v0, v1}, Lblr;->a(Lbmp;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lbmh$1$2;->a:Lbmp;

    invoke-virtual {v0}, Lbmp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lbmh$1$2;->b:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    invoke-static {v0}, Lbmh;->b(Lbmh;)V

    .line 120
    :cond_1
    return-void
.end method
