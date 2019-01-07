.class public final Lcom/alibaba/android/search/model/DingSearchResultModel$a;
.super Ljava/lang/Object;
.source "DingSearchResultModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/DingSearchResultModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/search/model/DingSearchResultModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    check-cast p1, Lcom/alibaba/android/search/model/DingSearchResultModel;

    check-cast p2, Lcom/alibaba/android/search/model/DingSearchResultModel;

    .line 1243
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1246
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_5

    .line 1249
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    move v0, v1

    .line 1250
    goto :goto_0

    .line 1252
    :cond_3
    invoke-static {p1}, Lcom/alibaba/android/search/model/DingSearchResultModel;->b(Lcom/alibaba/android/search/model/DingSearchResultModel;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/alibaba/android/search/model/DingSearchResultModel;->b(Lcom/alibaba/android/search/model/DingSearchResultModel;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    move v0, v1

    .line 1253
    goto :goto_0

    .line 1255
    :cond_4
    invoke-static {p1}, Lcom/alibaba/android/search/model/DingSearchResultModel;->b(Lcom/alibaba/android/search/model/DingSearchResultModel;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/alibaba/android/search/model/DingSearchResultModel;->b(Lcom/alibaba/android/search/model/DingSearchResultModel;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_5
    const/4 v0, -0x1

    .line 240
    goto :goto_0
.end method
