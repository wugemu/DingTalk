.class public Lcom/alibaba/doraemon/utils/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alibaba/doraemon/utils/MathUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/utils/MathUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogValue(I)I
    .locals 8
    .param p0, "time"    # I

    .prologue
    .line 67
    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    .line 68
    const/16 v0, 0x8

    .line 74
    .local v0, "result":I
    :goto_0
    return v0

    .line 69
    .end local v0    # "result":I
    :cond_0
    const/16 v1, 0x14

    if-gt p0, v1, :cond_1

    .line 70
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .restart local v0    # "result":I
    goto :goto_0

    .line 72
    .end local v0    # "result":I
    :cond_1
    const/16 v0, 0x32

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public static getQuadraticMean(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 23
    :cond_0
    sget-object v3, Lcom/alibaba/doraemon/utils/MathUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getQuadraticMean: empty list!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v3, 0x0

    .line 31
    :goto_0
    return v3

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 27
    .local v0, "cnt":I
    const/4 v2, 0x0

    .line 28
    .local v2, "quadraticSum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 29
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 30
    goto :goto_1

    .line 31
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_2
    div-int v3, v2, v0

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0
.end method

.method public static isDecimal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "[-+]{0,1}\\d+\\.\\d*|[-+]{0,1}\\d*\\.\\d+"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "orginal"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    .line 110
    :cond_1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 111
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isNegativeDecimal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "^-[0]\\.[1-9]*|^-[1-9]\\d*\\.\\d*"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNegativeInteger(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "^-[1-9]\\d*"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPositiveDecimal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "\\+{0,1}[0]\\.[1-9]*|\\+{0,1}[1-9]\\d*\\.\\d*"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPositiveInteger(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v0, "^\\+{0,1}[1-9]\\d*"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRealNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isWholeNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isDecimal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWholeNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "orginal"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v0, "[+-]{0,1}0"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isPositiveInteger(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/MathUtil;->isNegativeInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static selectQuadraticList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p1, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v0, v4, p1

    .line 42
    .local v0, "gap":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 43
    .local v2, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    if-gt v0, v4, :cond_1

    .line 44
    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    return-object v2

    .line 48
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 49
    .local v3, "tmp":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 50
    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 51
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/MathUtil;->getQuadraticMean(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    goto :goto_1
.end method
