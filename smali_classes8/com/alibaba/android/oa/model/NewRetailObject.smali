.class public Lcom/alibaba/android/oa/model/NewRetailObject;
.super Ljava/lang/Object;
.source "NewRetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NEW_RETAIL_TYPE:I = 0x0

.field public static final OA_TYPE:I = 0x1

.field public static final SHORTCUT_TYPE:I = 0x2


# instance fields
.field private mIsCustom:Z

.field private mNormalBgRes:I

.field private mOnTabSelected:Z

.field private mPosition:I

.field private mSelectedBgRes:I

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormalBgRes()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mNormalBgRes:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mPosition:I

    return v0
.end method

.method public getSelectedBgRes()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mSelectedBgRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mIsCustom:Z

    return v0
.end method

.method public isTabSelected()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mOnTabSelected:Z

    return v0
.end method

.method public setCustom(Z)V
    .locals 0
    .param p1, "custom"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mIsCustom:Z

    .line 84
    return-void
.end method

.method public setNormalBgRes(I)V
    .locals 0
    .param p1, "normalBgRes"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mNormalBgRes:I

    .line 68
    return-void
.end method

.method public setOnTabSelected(Z)V
    .locals 0
    .param p1, "tabSelected"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mOnTabSelected:Z

    .line 60
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mPosition:I

    .line 52
    return-void
.end method

.method public setSelectedBgRes(I)V
    .locals 0
    .param p1, "selectedBgRes"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mSelectedBgRes:I

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mTitle:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mType:I

    .line 36
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/oa/model/NewRetailObject;->mUrl:Ljava/lang/String;

    .line 92
    return-void
.end method
