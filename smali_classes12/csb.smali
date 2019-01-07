.class public final Lcsb;
.super Lgl;
.source "CalendarPagerAdapter.java"


# instance fields
.field protected final a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcsv;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field public e:Lcsp;

.field public f:Lcsq;

.field public g:Lcsm;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcsd;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcsf;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field private final p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private q:Lcsc;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;)V
    .locals 2
    .param p1, "calendarView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lgl;-><init>()V

    .line 37
    sget-object v0, Lcsq;->a:Lcsq;

    iput-object v0, p0, Lcsb;->f:Lcsq;

    .line 38
    sget-object v0, Lcsm;->a:Lcsm;

    iput-object v0, p0, Lcsb;->g:Lcsm;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcsb;->k:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcsb;->l:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcsb;->n:Z

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcsb;->o:I

    .line 53
    iput-object p1, p0, Lcsb;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .line 54
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->today()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcsb;->b:Ljava/util/ArrayDeque;

    .line 56
    invoke-virtual {p0, v1, v1}, Lcsb;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 57
    return-void
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    .line 3311
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 3312
    iget-object v1, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 3313
    iget-object v3, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 3314
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isBefore(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3315
    :cond_1
    iget-object v1, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3316
    iget-object v1, p0, Lcsb;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .line 3317
    add-int/lit8 v2, v2, -0x1

    .line 3311
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 305
    :cond_3
    iget-object v1, p0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 306
    .local v0, "pagerView":Lcsv;
    iget-object v2, p0, Lcsb;->k:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcsv;->setSelectedDates(Ljava/util/Collection;)V

    goto :goto_1

    .line 308
    .end local v0    # "pagerView":Lcsv;
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I
    .locals 1
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcsb;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 191
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isBefore(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcsb;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcsb;->q:Lcsc;

    invoke-interface {v0, p1}, Lcsc;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcsb;->q:Lcsc;

    invoke-interface {v0, p1}, Lcsc;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    invoke-direct {p0}, Lcsb;->d()V

    .line 287
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 4
    .param p1, "min"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p2, "max"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    iput-object p1, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 260
    iput-object p2, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 261
    iget-object v1, p0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    .line 262
    .local v0, "pagerView":Lcsv;
    invoke-virtual {v0, p1}, Lcsv;->setMinimumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 263
    invoke-virtual {v0, p2}, Lcsv;->setMaximumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    goto :goto_0

    .line 266
    .end local v0    # "pagerView":Lcsv;
    :cond_0
    if-nez p1, :cond_1

    .line 267
    iget-object v1, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    iget-object v2, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object p1

    .line 270
    :cond_1
    if-nez p2, :cond_2

    .line 271
    iget-object v1, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    iget-object v2, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcsb;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDay()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object p2

    .line 3142
    :cond_2
    new-instance v1, Lcsg;

    invoke-direct {v1, p1, p2}, Lcsg;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 274
    iput-object v1, p0, Lcsb;->q:Lcsc;

    .line 276
    invoke-virtual {p0}, Lcsb;->notifyDataSetChanged()V

    .line 277
    invoke-direct {p0}, Lcsb;->d()V

    .line 278
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p2, "selected"    # Z

    .prologue
    .line 290
    if-eqz p2, :cond_1

    .line 291
    iget-object v0, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-direct {p0}, Lcsb;->d()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcsb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    invoke-direct {p0}, Lcsb;->d()V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcsb;->i:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcsb;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcsb;->j:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcsb;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    move-object v0, p3

    check-cast v0, Lcsv;

    .line 119
    .local v0, "pagerView":Lcsv;
    iget-object v1, p0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcsb;->q:Lcsc;

    invoke-interface {v0}, Lcsc;->a()I

    move-result v0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 71
    .line 1138
    instance-of v4, p1, Lcsv;

    .line 71
    if-nez v4, :cond_1

    move v1, v3

    .line 83
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object v2, p1

    .line 74
    check-cast v2, Lcsv;

    .line 75
    .local v2, "pagerView":Lcsv;
    invoke-virtual {v2}, Lcsv;->getFirstViewDay()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    .line 76
    .local v0, "firstViewDay":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    if-nez v0, :cond_2

    move v1, v3

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    check-cast p1, Lcsv;

    .line 2133
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcsv;->getFirstViewDay()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v4

    .line 2134
    iget-object v5, p0, Lcsb;->q:Lcsc;

    invoke-interface {v5, v4}, Lcsc;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I

    move-result v1

    .line 80
    .local v1, "index":I
    if-gez v1, :cond_0

    move v1, v3

    .line 81
    goto :goto_0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcsb;->e:Lcsp;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcsb;->e:Lcsp;

    invoke-virtual {p0, p1}, Lcsb;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcsp;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    .line 3129
    new-instance v0, Lcsv;

    iget-object v1, p0, Lcsb;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {p0, p2}, Lcsb;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v2

    iget-object v3, p0, Lcsb;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getFirstDayOfWeek()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcsv;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;I)V

    .line 89
    .local v0, "monthView":Lcsv;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcsv;->setAlpha(F)V

    .line 90
    iget-boolean v1, p0, Lcsb;->n:Z

    invoke-virtual {v0, v1}, Lcsv;->setSelectionEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcsb;->f:Lcsq;

    invoke-virtual {v0, v1}, Lcsv;->setWeekDayFormatter(Lcsq;)V

    .line 93
    iget-object v1, p0, Lcsb;->g:Lcsm;

    invoke-virtual {v0, v1}, Lcsv;->setDayFormatter(Lcsm;)V

    .line 94
    iget-object v1, p0, Lcsb;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcsb;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcsv;->setSelectionColor(I)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcsb;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcsb;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcsv;->setDateTextAppearance(I)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcsb;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcsb;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcsv;->setWeekDayTextAppearance(I)V

    .line 103
    :cond_2
    iget v1, p0, Lcsb;->o:I

    invoke-virtual {v0, v1}, Lcsv;->setShowDefaults(I)V

    .line 104
    iget-object v1, p0, Lcsb;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v0, v1}, Lcsv;->setMinimumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 105
    iget-object v1, p0, Lcsb;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v0, v1}, Lcsv;->setMaximumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 106
    iget-object v1, p0, Lcsb;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcsv;->setSelectedDates(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcsb;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcsb;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcsv;->setDayViewDecorators(Ljava/util/Collection;)V

    .line 113
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 125
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
