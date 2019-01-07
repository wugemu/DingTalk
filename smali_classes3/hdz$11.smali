.class final Lhdz$11;
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
    .line 290
    iput-object p1, p0, Lhdz$11;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lhdz$11;->a:Lhdz;

    iget-object v1, p0, Lhdz$11;->a:Lhdz;

    invoke-static {v1}, Lhdz;->e(Lhdz;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lhdz;->a(Lhdz;I)I

    .line 295
    iget-object v0, p0, Lhdz$11;->a:Lhdz;

    iget-object v1, p0, Lhdz$11;->a:Lhdz;

    invoke-static {v1}, Lhdz;->f(Lhdz;)I

    move-result v1

    iget-object v2, p0, Lhdz$11;->a:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lhdz;->b(Lhdz;I)I

    .line 296
    return-void
.end method
