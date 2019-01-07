.class public Lcom/alibaba/android/search/fragment/SpaceSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "SpaceSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected g()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lemt$g;->search_cloud:I

    return v0
.end method
