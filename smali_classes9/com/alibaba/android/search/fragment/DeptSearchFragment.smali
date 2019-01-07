.class public Lcom/alibaba/android/search/fragment/DeptSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "DeptSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 1
    .param p1, "clickLogModel"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_DEPT_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 58
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lemt$g;->dt_search_dept_title:I

    return v0
.end method
