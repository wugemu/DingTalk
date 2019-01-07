.class public final Larv;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewColumn.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Larw;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larv;->a:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larv;->b:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static a(Laxn;)Larv;
    .locals 4
    .param p0, "event"    # Laxn;

    .prologue
    .line 27
    new-instance v0, Larv;

    invoke-direct {v0}, Larv;-><init>()V

    .line 28
    .local v0, "viewColumn":Larv;
    invoke-virtual {v0, p0}, Larv;->b(Laxn;)V

    .line 29
    invoke-interface {p0}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Larv;->c:J

    .line 30
    invoke-interface {p0}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Larv;->d:J

    .line 31
    return-object v0
.end method


# virtual methods
.method final b(Laxn;)V
    .locals 4
    .param p1, "event"    # Laxn;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Larv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Larv;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 37
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Larv;->c:J

    .line 39
    :cond_0
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Larv;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 40
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Larv;->d:J

    .line 42
    :cond_1
    return-void
.end method

.method final c(Laxn;)Z
    .locals 8
    .param p1, "event"    # Laxn;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    iget-object v2, p0, Larv;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    .line 62
    .local v0, "columnEvent":Laxn;
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {p1}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 67
    invoke-interface {p1}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 71
    const/4 v1, 0x1

    goto :goto_0
.end method
