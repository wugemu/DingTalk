.class public abstract Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.super Ljava/lang/Object;
.source "AbsBaseModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected final getBooleanValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getIntValue(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
