.class public Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;
.super Ljava/lang/Object;
.source "UpdateBotObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final WEATHER_BOT_KEY_ALARM_EVENT:Ljava/lang/String; = "weatherAlarmEvent"

.field public static final WEATHER_BOT_KEY_ALARM_EVENT_OFF:Ljava/lang/String; = "0"

.field public static final WEATHER_BOT_KEY_ALARM_EVENT_ON:Ljava/lang/String; = "1"

.field public static final WEATHER_BOT_KEY_LOCATION_ID:Ljava/lang/String; = "locationId"

.field public static final WEATHER_BOT_KEY_TIME_HOUR:Ljava/lang/String; = "cronTimeHour"

.field public static final WEATHER_BOT_KEY_TIME_MINUTE:Ljava/lang/String; = "cronTimeMinute"


# instance fields
.field public mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIcon:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mRobotId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcn;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;
    .locals 4
    .param p0, "model"    # Ldcn;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;-><init>()V

    .line 43
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;
    iget-object v1, p0, Ldcn;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 43
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mRobotId:J

    .line 44
    iget-object v1, p0, Ldcn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mName:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Ldcn;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Ldcn;->d:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public toIdlModel()Ldcn;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    new-instance v0, Ldcn;

    invoke-direct {v0}, Ldcn;-><init>()V

    .line 52
    .local v0, "model":Ldcn;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mRobotId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldcn;->a:Ljava/lang/Long;

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mName:Ljava/lang/String;

    iput-object v1, v0, Ldcn;->b:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mIcon:Ljava/lang/String;

    iput-object v1, v0, Ldcn;->c:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    iput-object v1, v0, Ldcn;->d:Ljava/util/Map;

    .line 56
    return-object v0
.end method
