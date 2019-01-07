.class public final Lcsn;
.super Ljava/lang/Object;
.source "LocaleRecognizingWeekDayFormatter.java"

# interfaces
.implements Lcsq;


# instance fields
.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u65e5"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e00"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e09"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u516d"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcsn;->b:[Ljava/lang/CharSequence;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "Sun"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Mon"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Tues"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Wed"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Thur"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Sat"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcsn;->c:[Ljava/lang/CharSequence;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "dayOfWeek"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    if-gtz p1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcsn;->b:[Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcsn;->c:[Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
