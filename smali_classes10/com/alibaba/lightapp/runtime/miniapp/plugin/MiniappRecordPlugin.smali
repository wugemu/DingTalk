.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappRecordPlugin.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/audio/AudioMagician;

.field private b:Landroid/media/AudioManager;

.field private c:I

.field private d:Z

.field private e:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    .line 54
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    const/4 v5, 0x2

    .line 36
    .line 1130
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->d:Z

    if-eqz v0, :cond_0

    .line 1131
    const-string/jumbo v0, "recordEvent"

    const-string/jumbo v1, "onerror"

    const/16 v2, 0x4e21

    invoke-static {p1, v0, v1, v2}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1151
    :goto_0
    return-void

    .line 2121
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1137
    :try_start_0
    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 1139
    if-lez v0, :cond_1

    const v1, 0xea60

    if-gt v0, v1, :cond_1

    .line 1140
    iput v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1142
    :cond_1
    :try_start_1
    const-string/jumbo v0, "recordEvent"

    const-string/jumbo v1, "onerror"

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1148
    const-string/jumbo v1, "MiniappRecordPlugin"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "startRecord parse duration exception, e = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 3098
    const-string/jumbo v0, "mini_api"

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    const-string/jumbo v0, "recordEvent"

    const-string/jumbo v1, "onerror"

    invoke-static {p1, v0, v1, v5}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a:Lcom/alibaba/doraemon/audio/AudioMagician;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->e:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->c:I

    return v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    .line 119
    :goto_0
    return v2

    .line 79
    :cond_1
    const-string/jumbo v2, "AUDIO"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/audio/AudioMagician;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 80
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b:Landroid/media/AudioManager;

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    .line 1065
    .local v1, "activity":Landroid/app/Activity;
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 83
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    goto :goto_0

    .line 83
    :sswitch_0
    const-string/jumbo v4, "startRecord"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "stopRecord"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_1

    .line 85
    :pswitch_0
    const-string/jumbo v2, "MiniappRecordPlugin"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    move v2, v3

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a()V

    move v2, v3

    .line 117
    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x71ca34ad -> :sswitch_0
        -0x52f8290d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 70
    const-string/jumbo v0, "startRecord"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "stopRecord"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a()V

    .line 126
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onRelease()V

    .line 127
    return-void
.end method
