.class final Lbib$29;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbib;->t()V
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
    .line 1438
    iput-object p1, p0, Lbib$29;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1441
    iget-object v0, p0, Lbib$29;->a:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbib$29;->a:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0, v1}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2272
    const-string/jumbo v0, "ding_detail_accept_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1443
    return-void
.end method
