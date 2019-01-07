.class public Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;
.super Ljava/lang/Object;
.source "WeatherBotPageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mLocationData:Ljava/lang/String;

.field public mUserLocationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcp;)Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;
    .locals 2
    .param p0, "model"    # Ldcp;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;-><init>()V

    .line 31
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;
    iget-object v1, p0, Ldcp;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;->mLocationData:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Ldcp;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;->mUserLocationId:Ljava/lang/String;

    goto :goto_0
.end method
