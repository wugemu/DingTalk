.class public Lcom/alibaba/android/search/assure/model/UnkownAssureModel;
.super Lcom/alibaba/android/search/assure/model/AssureModel;
.source "UnkownAssureModel.java"


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 0
    .param p1, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Leot;)V
    .locals 0
    .param p1, "pushClickResult"    # Leot;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/assure/model/AssureModel;-><init>(Leot;)V

    .line 26
    return-void
.end method


# virtual methods
.method public parseBaseModel()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
