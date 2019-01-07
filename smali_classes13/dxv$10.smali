.class final Ldxv$10;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->a(Lcom/alibaba/android/dingtalkim/base/model/GetWeatherBotPageObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldcq;",
        "Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxv;


# direct methods
.method constructor <init>(Ldxv;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxv;

    .prologue
    .line 295
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;>;"
    iput-object p1, p0, Ldxv$10;->a:Ldxv;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    check-cast p1, Ldcq;

    .line 1298
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;->fromIdl(Ldcq;)Lcom/alibaba/android/dingtalkim/base/model/WeatherLocationObject;

    move-result-object v0

    .line 295
    return-object v0
.end method
