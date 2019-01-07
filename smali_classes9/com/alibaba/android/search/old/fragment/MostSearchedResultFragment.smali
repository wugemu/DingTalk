.class public Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;
.super Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.source "MostSearchedResultFragment.java"


# static fields
.field static q:Lcom/alibaba/android/search/consts/SubPager;


# instance fields
.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_RECOMMEND_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    sput-object v0, Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;->r:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;->s:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;->t:I

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method protected final g()Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/alibaba/android/search/old/fragment/MostSearchedResultFragment;->q:Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lemt$g;->dt_search_group_most_seached_result:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
