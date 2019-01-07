.class public Lcom/amap/api/services/weather/LocalDayWeatherForecast;
.super Ljava/lang/Object;
.source "LocalDayWeatherForecast.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/weather/LocalDayWeatherForecast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/amap/api/services/weather/LocalDayWeatherForecast$1;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalDayWeatherForecast$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDayTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDayWindPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNightTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNightWindPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDayTemp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDayWeather(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDayWindDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDayWindPower(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setNightTemp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setNightWeather(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setNightWindDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setNightWindPower(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    return-void
.end method
