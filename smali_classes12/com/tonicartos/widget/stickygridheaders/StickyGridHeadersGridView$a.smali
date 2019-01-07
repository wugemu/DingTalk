.class final Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;
.super Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$f;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 1

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$f;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 1086
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v6, v6, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1087
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1088
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v6, v6, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-static {v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J

    move-result-wide v2

    .line 1090
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 1091
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v5, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z

    .line 1092
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 1463
    iget-object v6, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;

    if-eqz v6, :cond_4

    .line 1464
    iget-object v6, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;

    invoke-interface {v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$d;->a()Z

    move-result v1

    .line 1467
    .end local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1468
    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1471
    :cond_0
    invoke-virtual {v5, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->performHapticFeedback(I)Z

    .line 1094
    .restart local v1    # "handled":Z
    :cond_1
    if-eqz v1, :cond_3

    .line 1095
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v6, -0x2

    iput v6, v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    .line 1096
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v5, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 1097
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1102
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    :cond_2
    :goto_1
    return-void

    .line 1099
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    :cond_3
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$a;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v7, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_0
.end method
