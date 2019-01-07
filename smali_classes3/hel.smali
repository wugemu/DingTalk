.class public final Lhel;
.super Ljava/lang/Object;
.source "CalendarDayViewHolder.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Lhfn;

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lhfn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "oACalDailyItemCache"    # Lhfn;

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lhel;->h:I

    .line 28
    iput v0, p0, Lhel;->i:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lhel;->j:I

    .line 46
    iput-object p1, p0, Lhel;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lhel;->k:Landroid/view/View;

    .line 1053
    iget-object v0, p0, Lhel;->k:Landroid/view/View;

    sget v1, Lhdn$h;->tv_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhel;->b:Landroid/widget/TextView;

    .line 1054
    iget-object v0, p0, Lhel;->k:Landroid/view/View;

    sget v1, Lhdn$h;->tv_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhel;->c:Landroid/widget/TextView;

    .line 1056
    iget-object v0, p0, Lhel;->k:Landroid/view/View;

    sget v1, Lhdn$h;->iv_dot1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhel;->d:Landroid/widget/ImageView;

    .line 1057
    iget-object v0, p0, Lhel;->k:Landroid/view/View;

    sget v1, Lhdn$h;->iv_dot2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhel;->e:Landroid/widget/ImageView;

    .line 1058
    iget-object v0, p0, Lhel;->k:Landroid/view/View;

    sget v1, Lhdn$h;->iv_dot3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhel;->f:Landroid/widget/ImageView;

    .line 49
    iput-object p3, p0, Lhel;->g:Lhfn;

    .line 50
    return-void
.end method
