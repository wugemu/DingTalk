.class public Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;
.super Ljava/lang/Object;
.source "WeatherLocationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mLocationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcq;)Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;
    .locals 2
    .param p0, "model"    # Ldcq;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;-><init>()V

    .line 30
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;
    iget-object v1, p0, Ldcq;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;->mLocationId:Ljava/lang/String;

    goto :goto_0
.end method
