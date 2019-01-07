.class final Lctl$3;
.super Ljava/lang/Object;
.source "RobotConfigPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctl;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lctl;


# direct methods
.method constructor <init>(Lctl;)V
    .locals 0
    .param p1, "this$0"    # Lctl;

    .prologue
    .line 176
    iput-object p1, p0, Lctl$3;->a:Lctl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;

    .line 1180
    iget-object v0, p0, Lctl$3;->a:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    invoke-interface {v0}, Lctl$a;->b()V

    .line 1181
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;->mLocationData:Ljava/lang/String;

    .line 1182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    :cond_0
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lctl;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weatherBotPageObject data empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    sget v0, Lctk$i;->dt_robot_error_tip_weather_region_load_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1187
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lctl$3;->a:Lctl;

    invoke-static {v0, p1}, Lctl;->a(Lctl;Lcom/alibaba/android/dingtalkim/base/model/WeatherBotPageObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lctl;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadWeatherRegions onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 201
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lctl$3;->a:Lctl;

    invoke-static {v0}, Lctl;->b(Lctl;)Lctl$a;

    move-result-object v0

    invoke-interface {v0}, Lctl$a;->b()V

    .line 203
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 196
    return-void
.end method
