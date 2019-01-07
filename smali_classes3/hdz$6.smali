.class final Lhdz$6;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 566
    iput-object p1, p0, Lhdz$6;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 569
    iget-object v0, p0, Lhdz$6;->a:Lhdz;

    invoke-static {v0}, Lhdz;->g(Lhdz;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lhdz$6;->a:Lhdz;

    invoke-static {v0}, Lhdz;->t(Lhdz;)V

    .line 571
    iget-object v0, p0, Lhdz$6;->a:Lhdz;

    iget-object v1, p0, Lhdz$6;->a:Lhdz;

    invoke-static {v1}, Lhdz;->e(Lhdz;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lhdz;->b(Lhdz;Landroid/view/View;)V

    .line 572
    return-void
.end method
