.class final Lgty$1;
.super Ljava/lang/Object;
.source "OrgHomePageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lgty;


# direct methods
.method constructor <init>(Lgty;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lgty;

    .prologue
    .line 71
    iput-object p1, p0, Lgty$1;->b:Lgty;

    iput-object p2, p0, Lgty$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    iget-object v1, p0, Lgty$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lgty$1;->b:Lgty;

    invoke-static {v1}, Lgty;->a(Lgty;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object v1, p0, Lgty$1;->b:Lgty;

    invoke-static {v1}, Lgty;->a(Lgty;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lgty$1;->b:Lgty;

    invoke-static {v2}, Lgty;->a(Lgty;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Landroid/app/Activity;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iget-object v1, p0, Lgty$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method
