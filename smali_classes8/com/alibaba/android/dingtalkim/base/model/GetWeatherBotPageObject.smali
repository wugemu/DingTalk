.class public Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;
.super Ljava/lang/Object;
.source "GetWeatherBotPageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USER_LOCATION_TYPE_IP:I = 0x1

.field public static final USER_LOCATION_TYPE_LATLONG:I = 0x2


# instance fields
.field public mUserLocation:Ljava/lang/String;

.field public mUserLocationType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcl;)Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;
    .locals 3
    .param p0, "model"    # Ldcl;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;-><init>()V

    .line 36
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;
    iget-object v1, p0, Ldcl;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 36
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocationType:I

    .line 37
    iget-object v1, p0, Ldcl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocation:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIdlModel()Ldcl;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    new-instance v0, Ldcl;

    invoke-direct {v0}, Ldcl;-><init>()V

    .line 43
    .local v0, "model":Ldcl;
    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldcl;->a:Ljava/lang/Integer;

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;->mUserLocation:Ljava/lang/String;

    iput-object v1, v0, Ldcl;->b:Ljava/lang/String;

    .line 45
    return-object v0
.end method
