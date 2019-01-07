.class final Ldxv$9;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldcp;",
        "Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;",
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
    .line 272
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;>;"
    iput-object p1, p0, Ldxv$9;->a:Ldxv;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    check-cast p1, Ldcp;

    .line 1275
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;->fromIdl(Ldcp;)Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;

    move-result-object v0

    .line 272
    return-object v0
.end method
