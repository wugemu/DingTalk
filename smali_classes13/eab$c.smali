.class final Leab$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PushTaskListHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field final synthetic e:Leab;


# direct methods
.method public constructor <init>(Leab;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Leab;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 342
    iput-object p1, p0, Leab$c;->e:Leab;

    .line 343
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 344
    iput-object p2, p0, Leab$c;->d:Landroid/view/View;

    .line 345
    sget v0, Lctk$f;->tv_task_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leab$c;->c:Landroid/widget/TextView;

    .line 346
    sget v0, Lctk$f;->iv_task_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leab$c;->a:Landroid/widget/ImageView;

    .line 347
    sget v0, Lctk$f;->iv_red_dot:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leab$c;->b:Landroid/widget/ImageView;

    .line 348
    return-void
.end method
