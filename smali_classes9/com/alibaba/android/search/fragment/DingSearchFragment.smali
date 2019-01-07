.class public Lcom/alibaba/android/search/fragment/DingSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "DingSearchFragment.java"


# static fields
.field public static final D:Ljava/lang/String;


# instance fields
.field private E:Leoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/android/search/fragment/DingSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/fragment/DingSearchFragment;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/alibaba/android/search/fragment/DingSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/DingSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/DingSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchFragment;->E:Leoa;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->b(Ljava/util/List;)V

    .line 1079
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1080
    :cond_0
    return-void

    .line 1083
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 1084
    if-eqz v0, :cond_2

    .line 1087
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/DingSearchFragment;->E:Leoa;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->setDataChangeListener(Leoa;)V

    .line 1088
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/DingSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/BaseModel;->requestExtraData(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lemt$g;->search_ding:I

    return v0
.end method
