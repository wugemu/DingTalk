.class public final Lcsi;
.super Ljava/lang/Object;
.source "ArrayWeekDayFormatter.java"

# interfaces
.implements Lcsq;


# instance fields
.field private b:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "weekDayLabels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    if-nez p1, :cond_0

    .line 11
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Formatter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 16
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Array must contain exactly 7 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    iput-object p1, p0, Lcsi;->b:[Ljava/lang/CharSequence;

    .line 21
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
    .line 25
    iget-object v0, p0, Lcsi;->b:[Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method
