.class Lbr;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr$a;
    }
.end annotation


# instance fields
.field protected a:Lbr$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lbr$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lbr$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lbr;)V

    iput-object v0, p0, Lbr;->a:Lbr$a;

    .line 50
    return-void
.end method

.method static c(Landroid/view/View;)Lbr;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 66
    move-object v4, p0

    .line 1054
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 1055
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x1020002

    if-ne v6, v7, :cond_1

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1056
    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    .line 67
    .local v1, "contentView":Landroid/view/ViewGroup;
    :goto_1
    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 69
    .local v3, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lbr$a;

    if-eqz v4, :cond_3

    .line 72
    check-cast v0, Lbr$a;

    .end local v0    # "child":Landroid/view/View;
    iget-object v4, v0, Lbr$a;->e:Lbr;

    .line 77
    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :goto_3
    return-object v4

    .line 1058
    .end local v1    # "contentView":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 1059
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 1062
    goto :goto_1

    .line 69
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "contentView":Landroid/view/ViewGroup;
    .restart local v2    # "i":I
    .restart local v3    # "numChildren":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    new-instance v4, Lbk;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, p0}, Lbk;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :cond_5
    move-object v4, v5

    .line 77
    goto :goto_3
.end method
