.class final Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;
.super Ljava/lang/Object;
.source "ConfCallAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 74
    const/4 v3, 0x1

    .line 75
    .local v3, "refresh":Z
    const/4 v4, 0x0

    .line 76
    .local v4, "refreshDelay":I
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/graphics/Path;

    move-result-object v6

    if-nez v6, :cond_0

    .line 78
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    invoke-static {v6, v7}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 80
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    if-nez v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 82
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    .local v1, "pathHolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;>;"
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    if-nez v6, :cond_6

    .line 88
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->f(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;

    move-result-object v1

    .line 95
    :cond_2
    :goto_0
    if-eqz v1, :cond_b

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 97
    .local v5, "size":I
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    if-ge v6, v5, :cond_a

    .line 98
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;

    .line 99
    .local v0, "holder":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
    if-eqz v0, :cond_3

    .line 100
    instance-of v6, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$b;

    if-eqz v6, :cond_8

    .line 102
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/graphics/Path;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 115
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->i(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    .line 118
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->postInvalidate()V

    .line 132
    .end local v0    # "holder":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
    .end local v1    # "pathHolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;>;"
    .end local v5    # "size":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 133
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->k(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->j(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v7

    add-int/2addr v7, v4

    int-to-long v8, v7

    invoke-virtual {v6, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_5
    return-void

    .line 89
    .restart local v1    # "pathHolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;>;"
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 90
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->g(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 92
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->h(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 103
    .restart local v0    # "holder":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
    .restart local v5    # "size":I
    :cond_8
    instance-of v6, v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    if-eqz v6, :cond_3

    move-object v2, v0

    .line 104
    check-cast v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;

    .line 105
    .local v2, "point":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->c(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)I

    move-result v6

    if-nez v6, :cond_9

    .line 106
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/graphics/Path;

    move-result-object v6

    iget v7, v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->b:F

    iget v8, v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->c:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 111
    :goto_3
    iget v4, v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->d:I

    goto :goto_1

    .line 108
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Landroid/graphics/Path;

    move-result-object v6

    iget v7, v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->b:F

    iget v8, v2, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->c:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 120
    .end local v0    # "holder":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
    .end local v2    # "point":Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;
    :cond_a
    const/4 v3, 0x0

    .line 121
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 122
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;->a()V

    goto :goto_2

    .line 126
    .end local v5    # "size":I
    :cond_b
    const/4 v3, 0x0

    .line 127
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 128
    iget-object v6, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->d(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;->a()V

    goto/16 :goto_2
.end method
