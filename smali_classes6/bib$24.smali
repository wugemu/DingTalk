.class final Lbib$24;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 629
    iput-object p1, p0, Lbib$24;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 632
    iget-object v0, p0, Lbib$24;->a:Lbib;

    iget-object v0, v0, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbib$24;->a:Lbib;

    iget v0, v0, Lbib;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lbib$24;->a:Lbib;

    invoke-static {v0}, Lbib;->s(Lbib;)V

    .line 635
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
