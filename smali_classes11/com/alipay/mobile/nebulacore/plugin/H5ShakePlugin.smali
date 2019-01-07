.class public Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
.super Lipd;
.source "H5ShakePlugin.java"


# static fields
.field private static COUNTS_LIMITED:I = 0x0

.field private static SPEED_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H5ShakePlugin"

.field private static UPTATE_INTERVAL_TIME:I


# instance fields
.field private counts:I

.field private lastBridgeContext:Liny;

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private listener:Landroid/hardware/SensorEventListener;

.field private registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x64

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->UPTATE_INTERVAL_TIME:I

    .line 46
    const/16 v0, 0x578

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->SPEED_THRESHOLD:I

    .line 52
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->COUNTS_LIMITED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lipd;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->counts:I

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->UPTATE_INTERVAL_TIME:I

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastX:F

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastX:F

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastY:F

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastY:F

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastZ:F

    return v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastZ:F

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->SPEED_THRESHOLD:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->counts:I

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->counts:I

    return p1
.end method

.method static synthetic access$608(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->counts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->counts:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->COUNTS_LIMITED:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->unregisterListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Liny;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastBridgeContext:Liny;

    return-object v0
.end method

.method static synthetic access$902(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;Liny;)Liny;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # Liny;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastBridgeContext:Liny;

    return-object p1
.end method

.method private getListener()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private getListenerDelayed()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->listener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private registerListener()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 214
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registered:Z

    if-eqz v8, :cond_0

    .line 242
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v8, "sensor"

    .line 219
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    .line 221
    .local v6, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v6, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 225
    .local v5, "sensor":Landroid/hardware/Sensor;
    const-string/jumbo v8, "h5_use_watchShake_delayed"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 227
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "h5_use_watchShake_is_delayed"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "isDelayed":Ljava/lang/String;
    const-string/jumbo v8, "h5_use_watchShake_is_adjust"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "isAdjust":Ljava/lang/String;
    const-string/jumbo v8, "no"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 231
    const-string/jumbo v8, "yes"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    const-string/jumbo v8, "h5_use_watchShake_interval_time"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->UPTATE_INTERVAL_TIME:I

    .line 233
    const-string/jumbo v8, "h5_use_watchShake_speed_threshold"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->SPEED_THRESHOLD:I

    .line 234
    const-string/jumbo v8, "h5_use_watchShake_counts_limited"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->COUNTS_LIMITED:I

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListenerDelayed()Landroid/hardware/SensorEventListener;

    move-result-object v1

    .line 240
    .local v1, "eventListener":Landroid/hardware/SensorEventListener;
    :goto_1
    const/4 v8, 0x3

    invoke-virtual {v6, v1, v5, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 241
    iput-boolean v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registered:Z

    goto :goto_0

    .line 238
    .end local v1    # "eventListener":Landroid/hardware/SensorEventListener;
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    .restart local v1    # "eventListener":Landroid/hardware/SensorEventListener;
    goto :goto_1
.end method

.method private unregisterListener()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registered:Z

    if-nez v4, :cond_0

    .line 261
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v4, "sensor"

    .line 250
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 253
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const-string/jumbo v4, "h5_use_watchShake_delayed"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListenerDelayed()Landroid/hardware/SensorEventListener;

    move-result-object v1

    .line 259
    .local v1, "eventListener":Landroid/hardware/SensorEventListener;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registered:Z

    goto :goto_0

    .line 257
    .end local v1    # "eventListener":Landroid/hardware/SensorEventListener;
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    .restart local v1    # "eventListener":Landroid/hardware/SensorEventListener;
    goto :goto_1
.end method

.method private vibrate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "vibrator"

    .line 207
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 208
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 209
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 187
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->vibrate()V

    .line 201
    :goto_0
    return v1

    .line 191
    :cond_0
    const-string/jumbo v2, "watchShake"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 192
    if-eqz v2, :cond_1

    .line 2121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 192
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 193
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->unregisterListener()V

    .line 196
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registerListener()V

    .line 197
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->lastBridgeContext:Liny;

    goto :goto_0

    .line 201
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 1
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->registered:Z

    .line 172
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 176
    const-string/jumbo v0, "vibrate"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "watchShake"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->unregisterListener()V

    .line 183
    return-void
.end method
