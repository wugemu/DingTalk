.class final Lhbn$2;
.super Ljava/lang/Object;
.source "AlbumViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhbn;


# direct methods
.method constructor <init>(Lhbn;)V
    .locals 0
    .param p1, "this$0"    # Lhbn;

    .prologue
    .line 107
    iput-object p1, p0, Lhbn$2;->a:Lhbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 110
    :goto_0
    if-eqz p1, :cond_0

    instance-of v2, p1, Lhbm;

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .restart local p1    # "v":Landroid/view/View;
    goto :goto_0

    .line 113
    :cond_0
    if-nez p1, :cond_2

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    iget-object v2, p0, Lhbn$2;->a:Lhbn;

    .line 1021
    iget-object v2, v2, Lhbn;->c:Lhbn$a;

    .line 116
    if-eqz v2, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, "position":I
    iget-object v2, p0, Lhbn$2;->a:Lhbn;

    .line 2021
    iget-object v2, v2, Lhbn;->c:Lhbn$a;

    .line 119
    invoke-interface {v2, v1}, Lhbn$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v1    # "position":I
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
