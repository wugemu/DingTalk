.class final Llgf$3;
.super Llgp;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llgf;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Llgf;


# direct methods
.method constructor <init>(Llgf;Llgf;I)V
    .locals 0
    .param p1, "this$0"    # Llgf;
    .param p2, "gifDrawable"    # Llgf;

    .prologue
    .line 546
    iput-object p1, p0, Llgf$3;->b:Llgf;

    iput p3, p0, Llgf$3;->a:I

    invoke-direct {p0, p2}, Llgp;-><init>(Llgf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Llgf$3;->b:Llgf;

    iget-object v0, v0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v1, p0, Llgf$3;->a:I

    iget-object v2, p0, Llgf$3;->b:Llgf;

    iget-object v2, v2, Llgf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->b(ILandroid/graphics/Bitmap;)V

    .line 550
    iget-object v0, p0, Llgf$3;->b:Llgf;

    iget-object v0, v0, Llgf;->i:Llgj;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Llgj;->sendEmptyMessageAtTime(IJ)Z

    .line 551
    return-void
.end method
