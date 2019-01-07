.class public final Laoy;
.super Ljava/lang/Object;
.source "CalendarDayViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoy$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field g:Laoy$a;

.field private h:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Laoy$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "dayEventListener"    # Laoy$a;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Laoy;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Laoy;->h:Landroid/view/View;

    .line 49
    iput-object p3, p0, Laoy;->g:Laoy$a;

    .line 1054
    iget-object v0, p0, Laoy;->h:Landroid/view/View;

    sget v1, Laow$d;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laoy;->b:Landroid/view/View;

    .line 1055
    iget-object v0, p0, Laoy;->h:Landroid/view/View;

    sget v1, Laow$d;->tv_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoy;->c:Landroid/widget/TextView;

    .line 1056
    iget-object v0, p0, Laoy;->h:Landroid/view/View;

    sget v1, Laow$d;->tv_holiday:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoy;->d:Landroid/widget/TextView;

    .line 1057
    iget-object v0, p0, Laoy;->h:Landroid/view/View;

    sget v1, Laow$d;->tv_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoy;->e:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Laoy;->h:Landroid/view/View;

    sget v1, Laow$d;->iv_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Laoy;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 51
    return-void
.end method
