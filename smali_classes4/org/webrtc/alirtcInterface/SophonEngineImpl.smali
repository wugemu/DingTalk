.class public Lorg/webrtc/alirtcInterface/SophonEngineImpl;
.super Lorg/webrtc/alirtcInterface/SophonEngine;
.source "SophonEngineImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Pass"


# instance fields
.field private aliSophonEnginel:Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;

.field private audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

.field private extras:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderShareContext:J

.field private m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

.field private sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

.field private final sophonViewStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/model/SophonViewStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/alirtcInterface/SophonEventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/webrtc/alirtcInterface/SophonEventListener;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/SophonEngine;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->extras:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mRenderShareContext:J

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object p3, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    .line 46
    iput-object p2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->extras:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/webrtc/alirtcInterface/SophonEventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/webrtc/alirtcInterface/SophonEventListener;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/webrtc/alirtcInterface/SophonEngine;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->extras:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mRenderShareContext:J

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/alirtcInterface/SophonEngineImpl;Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    .param p1, "x1"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->onAudioManagerDevicesChanged(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/audio/AppRTCAudioManager;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mRenderShareContext:J

    return-wide v0
.end method

.method private getAndroidSDcardMemDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 732
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 733
    .local v1, "sdCard":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 734
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/logs/conf_video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private onAudioManagerDevicesChanged(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V
    .locals 3
    .param p1, "device"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p2, "availableDevices":Ljava/util/Set;, "Ljava/util/Set<Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;>;"
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAudioManagerDevicesChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public RegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;)V
    .locals 1
    .param p1, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;

    .prologue
    .line 623
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioObserver;)V

    .line 626
    :cond_0
    return-void
.end method

.method public RegisterRGBAObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;

    .prologue
    .line 679
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RegisterRGBAObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRenderDataObserver;)V

    .line 682
    :cond_0
    return-void
.end method

.method public RegisterTexturePostObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    .prologue
    .line 665
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RegisterTexturePostObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V

    .line 668
    :cond_0
    return-void
.end method

.method public RegisterTexturePreObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RegisterTexturePreObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliTextureObserver;)V

    .line 654
    :cond_0
    return-void
.end method

.method public RegisterYUVObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;

    .prologue
    .line 637
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RegisterYUVObserver(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliVideoObserver;)V

    .line 640
    :cond_0
    return-void
.end method

.method public UnRegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;)V
    .locals 1
    .param p1, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;

    .prologue
    .line 630
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UnRegisterAudioObserver(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliAudioType;)V

    .line 633
    :cond_0
    return-void
.end method

.method public UnRegisterRGBAObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 686
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UnRegisterRGBAObserver(Ljava/lang/String;)V

    .line 689
    :cond_0
    return-void
.end method

.method public UnRegisterTexturePostObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UnRegisterTexturePostObserver(Ljava/lang/String;)V

    .line 675
    :cond_0
    return-void
.end method

.method public UnRegisterTexturePreObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 658
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UnRegisterTexturePreObserver(Ljava/lang/String;)V

    .line 661
    :cond_0
    return-void
.end method

.method public UnRegisterYUVObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UnRegisterYUVObserver(Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void
.end method

.method public addLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
    .locals 6
    .param p1, "videSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p2, "config"    # Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->removeLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 192
    new-instance v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-direct {v1}, Lorg/webrtc/model/SophonViewStatus;-><init>()V

    .line 193
    .local v1, "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    const-string/jumbo v2, "0"

    iput-object v2, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    .line 194
    sget-object v2, Lorg/webrtc/model/SophonViewStatus$ViewMode;->LOACALVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    iput-object v2, v1, Lorg/webrtc/model/SophonViewStatus;->viewMode:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .line 195
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    iput-object v2, v1, Lorg/webrtc/model/SophonViewStatus;->surfaceView:Landroid/view/SurfaceView;

    .line 196
    iget v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->width:I

    .line 197
    iget v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->height:I

    .line 198
    iput-object p1, v1, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 199
    iget v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    .line 200
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    sget-object v3, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->LOCALMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    invoke-virtual {v2, v3}, Lorg/webrtc/sdk/SophonSurfaceView;->setsurfaceMode(Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;)V

    .line 201
    iget-wide v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 202
    iget-wide v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mRenderShareContext:J

    .line 204
    :cond_0
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v2}, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v2, :cond_1

    .line 207
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 208
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 209
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 210
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 211
    iget v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 212
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 213
    iget-wide v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 214
    iget-boolean v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    iput-boolean v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    .line 215
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 216
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v2, p1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->AddLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 219
    .end local v0    # "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    :cond_1
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v2, v1}, Lorg/webrtc/sdk/SophonSurfaceView;->setSophonViewStatus(Lorg/webrtc/model/SophonViewStatus;)V

    .line 220
    iget-object v2, p2, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    new-instance v3, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;

    invoke-direct {v3, p0, p2}, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;-><init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V

    invoke-virtual {v2, v3}, Lorg/webrtc/sdk/SophonSurfaceView;->setListener(Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;)V

    .line 272
    return-void
.end method

.method public addRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p3, "config"    # Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 303
    new-instance v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-direct {v1}, Lorg/webrtc/model/SophonViewStatus;-><init>()V

    .line 304
    .local v1, "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    iput-object p1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    .line 305
    sget-object v2, Lorg/webrtc/model/SophonViewStatus$ViewMode;->REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    iput-object v2, v1, Lorg/webrtc/model/SophonViewStatus;->viewMode:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .line 306
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    iput-object v2, v1, Lorg/webrtc/model/SophonViewStatus;->surfaceView:Landroid/view/SurfaceView;

    .line 307
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->width:I

    .line 308
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->height:I

    .line 309
    iput-object p2, v1, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 310
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    iput v2, v1, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    .line 311
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    sget-object v3, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->REMOTEMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    invoke-virtual {v2, v3}, Lorg/webrtc/sdk/SophonSurfaceView;->setsurfaceMode(Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;)V

    .line 312
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v2}, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v2, :cond_0

    .line 315
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 316
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 317
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 318
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 319
    iget v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 320
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 321
    iget-wide v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 322
    iget-boolean v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    iput-boolean v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    .line 323
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 324
    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    iget-object v3, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->AddRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 327
    .end local v0    # "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    :cond_0
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    invoke-virtual {v2, v1}, Lorg/webrtc/sdk/SophonSurfaceView;->setSophonViewStatus(Lorg/webrtc/model/SophonViewStatus;)V

    .line 328
    const-string/jumbo v2, "Pass"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "displayView is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " holder is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p3, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    check-cast v2, Lorg/webrtc/sdk/SophonSurfaceView;

    new-instance v3, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;

    invoke-direct {v3, p0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;-><init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)V

    invoke-virtual {v2, v3}, Lorg/webrtc/sdk/SophonSurfaceView;->setListener(Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;)V

    .line 379
    return-void
.end method

.method public changeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V
    .locals 1
    .param p1, "level"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;

    .prologue
    .line 598
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->ChangeLogLevel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSDKLogLevel;)V

    .line 601
    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->CloseCamera()V

    .line 187
    :cond_0
    return-void
.end method

.method public create(Z)Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    .locals 4
    .param p1, "enableAudio"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE_IMPL;-><init>()V

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .line 56
    new-instance v1, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;

    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    iget-object v3, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonEventListener:Lorg/webrtc/alirtcInterface/SophonEventListener;

    invoke-direct {v1, v0, v2, v3}, Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;-><init>(Landroid/content/Context;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;Lorg/webrtc/alirtcInterface/SophonEventListener;)V

    iput-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->aliSophonEnginel:Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;

    .line 57
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-static {v0}, Lorg/webrtc/utils/AlivcLog;->create(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;)Lorg/webrtc/utils/AlivcLog;

    .line 58
    const-string/jumbo v0, "Pass"

    const-string/jumbo v1, "log init"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->extras:Ljava/lang/String;

    iget-object v2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->aliSophonEnginel:Lorg/webrtc/alirtcInterface/AliSophonEngineImpl;

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Create(Ljava/lang/String;Lorg/webrtc/alirtcInterface/AliSophonEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    const/4 p0, 0x0

    .line 75
    .end local p0    # "this":Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "this":Lorg/webrtc/alirtcInterface/SophonEngineImpl;
    :cond_0
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/audio/AppRTCAudioManager;->create(Landroid/content/Context;)Lorg/webrtc/audio/AppRTCAudioManager;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    .line 64
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-virtual {v0, p1}, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudioControl(Z)V

    .line 65
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    new-instance v1, Lorg/webrtc/alirtcInterface/SophonEngineImpl$1;

    invoke-direct {v1, p0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl$1;-><init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/audio/AppRTCAudioManager;->start(Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;)V

    goto :goto_0
.end method

.method public destory()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$2;

    invoke-direct {v0, p0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl$2;-><init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)V

    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    invoke-static {}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->destroy()V

    .line 105
    invoke-static {}, Lorg/webrtc/utils/AlivcLog;->destroy()V

    .line 106
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Destory()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .line 110
    :cond_1
    return-void
.end method

.method public enableBackgroundAudioRecording(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 693
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->enableBackgroundAudioRecording(Z)V

    .line 696
    :cond_0
    return-void
.end method

.method public enableLocalAudio(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnableLocalAudio(Z)V

    .line 511
    :cond_0
    return-void
.end method

.method public enableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
    .locals 1
    .param p1, "videSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p2, "enable"    # Z

    .prologue
    .line 501
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnableLocalVideo(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 504
    :cond_0
    return-void
.end method

.method public enableRemoteAudio(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnableRemoteAudio(Ljava/lang/String;Z)V

    .line 525
    :cond_0
    return-void
.end method

.method public enableRemoteVideo(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p3, "enable"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2, p3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnableRemoteVideo(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Z)V

    .line 518
    :cond_0
    return-void
.end method

.method public enumerateAllCaptureDevices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->EnumerateAllCaptureDevices()[Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAndroidCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 719
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 720
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAndroidInternalMemDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 707
    .local v0, "fileDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    :cond_0
    return-object v1
.end method

.method public getCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "type":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->GetCaptureType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    move-result-object v0

    .line 466
    :cond_0
    return-object v0
.end method

.method public getLogDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 750
    :try_start_0
    invoke-direct {p0, p1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->getAndroidSDcardMemDir(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->GetSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTransportStatus(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 570
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_UNKNOW:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 571
    .local v0, "result":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->GetTransportStatus(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    move-result-object v0

    .line 574
    .end local v0    # "result":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    :cond_0
    return-object v0
.end method

.method public gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I
    .locals 2
    .param p1, "authInfo"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    const/4 v0, -0x1

    .line 124
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Gslb(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;)I

    move-result v0

    .line 128
    :cond_0
    return v0
.end method

.method public isEnableBackgroundAudioRecording()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->isEnableBackgroundAudioRecording()Z

    move-result v0

    .line 703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinChannel(Ljava/lang/String;)I
    .locals 2
    .param p1, "display_name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    const/4 v0, -0x1

    .line 135
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->JoinChannel(Ljava/lang/String;)I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public joinChannel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "authInfo"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;
    .param p2, "displayName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    const/4 v0, -0x1

    .line 146
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->JoinChannel(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AuthInfo;Ljava/lang/String;)I

    move-result v0

    .line 149
    :cond_0
    return v0
.end method

.method public leaveChannel()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    const/4 v0, -0x1

    .line 156
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->LeaveChannel()I

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public leaveChannel(J)I
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 166
    const/4 v0, -0x1

    .line 168
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->LeaveChannel(J)I

    move-result v0

    .line 172
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 561
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/model/SophonViewStatus;

    .line 562
    .local v0, "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    invoke-virtual {v0}, Lorg/webrtc/model/SophonViewStatus;->getViewMode()Lorg/webrtc/model/SophonViewStatus$ViewMode;

    move-result-object v2

    sget-object v3, Lorg/webrtc/model/SophonViewStatus$ViewMode;->REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    if-ne v2, v3, :cond_0

    .line 563
    iget-object v2, v0, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->enableRemoteAudio(Ljava/lang/String;Z)V

    goto :goto_0

    .line 566
    .end local v0    # "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 552
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/model/SophonViewStatus;

    .line 553
    .local v0, "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    invoke-virtual {v0}, Lorg/webrtc/model/SophonViewStatus;->getViewMode()Lorg/webrtc/model/SophonViewStatus$ViewMode;

    move-result-object v2

    sget-object v3, Lorg/webrtc/model/SophonViewStatus$ViewMode;->REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    if-ne v2, v3, :cond_0

    .line 554
    iget-object v2, v0, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->enableRemoteAudio(Ljava/lang/String;Z)V

    goto :goto_0

    .line 557
    .end local v0    # "sophonViewStatus":Lorg/webrtc/model/SophonViewStatus;
    :cond_1
    return-void
.end method

.method public openCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V
    .locals 1
    .param p1, "aliCameraConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->OpenCamera(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCameraConfig;)V

    .line 180
    :cond_0
    return-void
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->PauseRender()V

    .line 541
    :cond_0
    return-void
.end method

.method public publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
    .locals 1
    .param p1, "publishConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    .prologue
    .line 418
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Publish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 421
    :cond_0
    return-void
.end method

.method public removeLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 3
    .param p1, "videSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "0"

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RemoveLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 276
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method public removeRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoSourceType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 396
    const-string/jumbo v1, "Pass"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeRemoteDisplayWindow callId is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 398
    const-string/jumbo v2, "Pass"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeRemoteDisplayWindow callId is "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " videoType is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-virtual {v1}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    .line 400
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-virtual {v1}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 401
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 402
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->surfaceView:Landroid/view/SurfaceView;

    check-cast v1, Lorg/webrtc/sdk/SophonSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/webrtc/sdk/SophonSurfaceView;->setListener(Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;)V

    .line 403
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    const-string/jumbo v1, "Pass"

    const-string/jumbo v2, "list remove remote display"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RemoveRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 412
    :cond_0
    return-void

    .line 397
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V
    .locals 1
    .param p1, "publishConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Republish(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliPublishConfig;)V

    .line 428
    :cond_0
    return-void
.end method

.method public respondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tid"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 605
    const/4 v0, -0x1

    .line 606
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2, p3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RespondMessageNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 609
    :cond_0
    return v0
.end method

.method public resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "subscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 446
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stream_label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->stream_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " audio_track_label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;->audio_track_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Resubscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 450
    :cond_0
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->ResumeRender()V

    .line 548
    :cond_0
    return-void
.end method

.method public selectSpeakePhone(Z)V
    .locals 3
    .param p1, "bool"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 529
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bool:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->audioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setDefaultAudioDevice(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V

    .line 534
    :cond_0
    return-void

    .line 531
    :cond_1
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    goto :goto_0
.end method

.method public setCameraZoom(F)I
    .locals 2
    .param p1, "zoom"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 492
    const/4 v0, -0x1

    .line 493
    .local v0, "ret":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SetCameraZoom(F)I

    move-result v0

    .line 496
    :cond_0
    return v0
.end method

.method public setCaptureDeviceByName(Ljava/lang/String;)I
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 589
    const/4 v0, -0x1

    .line 590
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SetCaptureDeviceByName(Ljava/lang/String;)I

    move-result v0

    .line 593
    :cond_0
    return v0
.end method

.method public setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V
    .locals 1
    .param p1, "collectStatusListener"    # Lorg/webrtc/alirtcInterface/CollectStatusListener;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->setCollectStatusListener(Lorg/webrtc/alirtcInterface/CollectStatusListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setFlash(Z)I
    .locals 2
    .param p1, "flash"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 482
    const/4 v0, -0x1

    .line 483
    .local v0, "ret":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SetFlash(Z)I

    move-result v0

    .line 486
    :cond_0
    return v0
.end method

.method public subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "subscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 439
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Subscribe(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V

    .line 442
    :cond_0
    return-void
.end method

.method public switchCramer()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 472
    const/4 v0, -0x1

    .line 473
    .local v0, "ret":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->SwitchCramer()I

    move-result v0

    .line 476
    :cond_0
    return v0
.end method

.method public switchSubscribeVideoStream(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "srcType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .param p3, "destType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 383
    const-string/jumbo v1, "Pass"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchSubscribeVideoStream callId is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    const-string/jumbo v2, "Pass"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "switchSubscribeVideoStream callId is "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " videoType is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-virtual {v1}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    iget-object v1, v1, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-virtual {v1}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 388
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->sophonViewStatusList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/model/SophonViewStatus;

    invoke-virtual {v1, p3}, Lorg/webrtc/model/SophonViewStatus;->setVideoType(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    .line 392
    :cond_0
    return-void

    .line 384
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unpublish()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Unpublish()V

    .line 435
    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v0, p1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->Unsubscribe(Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method public updateDisplayWindow(Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
    .locals 4
    .param p1, "aliRendererConfig"    # Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 289
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 290
    .local v0, "rendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iget v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->width:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 291
    iget v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->height:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 292
    iget-object v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 293
    iget v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 294
    iget-object v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 295
    iget-wide v2, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 296
    iget-boolean v1, p1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    iput-boolean v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    .line 297
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UpdateDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 299
    .end local v0    # "rendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    :cond_0
    return-void
.end method

.method public uplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 614
    const/4 v0, -0x1

    .line 615
    .local v0, "result":I
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->m_nAliRTCInterface:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-virtual {v1, p1, p2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UplinkChannelMessage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 618
    :cond_0
    return v0
.end method
