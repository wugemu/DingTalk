.class final Llgf$1;
.super Llgp;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llgf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llgf;


# direct methods
.method constructor <init>(Llgf;Llgf;)V
    .locals 0
    .param p1, "this$0"    # Llgf;
    .param p2, "gifDrawable"    # Llgf;

    .prologue
    .line 353
    iput-object p1, p0, Llgf$1;->a:Llgf;

    invoke-direct {p0, p2}, Llgp;-><init>(Llgf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Llgf$1;->a:Llgf;

    iget-object v0, v0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Llgf$1;->a:Llgf;

    invoke-virtual {v0}, Llgf;->start()V

    .line 359
    :cond_0
    return-void
.end method
