.class public final Leta;
.super Ljava/lang/Object;
.source "SearchResultComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/search/model/BaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    .line 27
    check-cast p1, Lcom/alibaba/android/search/model/BaseModel;

    check-cast p2, Lcom/alibaba/android/search/model/BaseModel;

    .line 1032
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1034
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 1035
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getLogSearchType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    .line 1039
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/search/model/BaseModel;->getWeight()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getWeight()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 1040
    cmpl-double v3, v4, v8

    if-gtz v3, :cond_0

    .line 1042
    cmpg-double v0, v4, v8

    if-gez v0, :cond_2

    move v0, v1

    .line 1043
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1045
    goto :goto_0

    .line 1047
    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_0

    .line 1049
    :cond_4
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    move v0, v1

    .line 1050
    goto :goto_0

    :cond_5
    move v0, v2

    .line 27
    goto :goto_0
.end method
