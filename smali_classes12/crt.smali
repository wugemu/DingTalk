.class public Lcrt;
.super Ljava/lang/Object;
.source "GifUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, ".gif"

    sput-object v0, Lcrt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 40
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 70
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    if-gtz p3, :cond_2

    .line 45
    const/16 p3, 0xa0

    .line 48
    :cond_2
    if-gtz p4, :cond_3

    .line 49
    const/16 p4, 0xa0

    .line 52
    :cond_3
    move v2, p1

    .line 53
    .local v2, "targetWidth":I
    move v1, p2

    .line 54
    .local v1, "targetHeight":I
    if-gt p1, p3, :cond_4

    if-le p2, p4, :cond_5

    .line 55
    :cond_4
    if-lt p1, p2, :cond_7

    .line 56
    int-to-float v3, p3

    int-to-float v4, p1

    mul-float/2addr v4, v5

    div-float v0, v3, v4

    .line 57
    .local v0, "factor":F
    move v2, p3

    .line 58
    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 66
    .end local v0    # "factor":F
    :cond_5
    :goto_1
    if-ne v2, p1, :cond_6

    if-eq v1, p2, :cond_0

    .line 1076
    :cond_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1077
    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1078
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1079
    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1080
    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1081
    sget-object v4, Lcrt;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1083
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_7
    int-to-float v3, p4

    int-to-float v4, p2

    mul-float/2addr v4, v5

    div-float v0, v3, v4

    .line 61
    .restart local v0    # "factor":F
    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 62
    move v1, p4

    goto :goto_1
.end method
