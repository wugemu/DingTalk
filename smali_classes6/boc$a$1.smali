.class final Lboc$a$1;
.super Ljava/lang/Object;
.source "PicAndTxtViewHolder.java"

# interfaces
.implements Lbok$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lboc$a;


# direct methods
.method constructor <init>(Lboc$a;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lboc$a;

    .prologue
    .line 350
    iput-object p1, p0, Lboc$a$1;->b:Lboc$a;

    iput-object p2, p0, Lboc$a$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Lboc$a$1;->b:Lboc$a;

    iget-object v0, v0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lboc$a$1;->b:Lboc$a;

    iget-object v1, v1, Lboc$a;->b:Lboc;

    invoke-static {v1}, Lboc;->g(Lboc;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 354
    iget-object v0, p0, Lboc$a$1;->b:Lboc$a;

    iget-object v0, v0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 355
    iget-object v0, p0, Lboc$a$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lboc$a$1;->b:Lboc$a;

    iget-object v1, v1, Lboc$a;->b:Lboc;

    invoke-static {v1}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void
.end method
