.class Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;
.super Ljava/lang/Object;
.source "AlivcVideoConfImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubscribeConfig"
.end annotation


# instance fields
.field private renderMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

.field private sophonSurfaceView:Lorg/webrtc/sdk/SophonSurfaceView;

.field private subscribeConfig:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

.field final synthetic this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;


# direct methods
.method constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfImpl;Lorg/webrtc/sdk/SophonSurfaceView;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V
    .locals 0
    .param p2, "sophonSurfaceView"    # Lorg/webrtc/sdk/SophonSurfaceView;
    .param p3, "subscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .param p4, "renderMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->this$0:Lcom/alivc/live/conf/AlivcVideoConfImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iput-object p2, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->sophonSurfaceView:Lorg/webrtc/sdk/SophonSurfaceView;

    .line 1904
    iput-object p3, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->subscribeConfig:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .line 1905
    iput-object p4, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->renderMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 1906
    return-void
.end method


# virtual methods
.method public getRenderMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->renderMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    return-object v0
.end method

.method public getSophonSurfaceView()Lorg/webrtc/sdk/SophonSurfaceView;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->sophonSurfaceView:Lorg/webrtc/sdk/SophonSurfaceView;

    return-object v0
.end method

.method public getSubscribeConfig()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->subscribeConfig:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    return-object v0
.end method

.method public setRenderMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;)V
    .locals 0
    .param p1, "renderMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->renderMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 1930
    return-void
.end method

.method public setSophonSurfaceView(Lorg/webrtc/sdk/SophonSurfaceView;)V
    .locals 0
    .param p1, "sophonSurfaceView"    # Lorg/webrtc/sdk/SophonSurfaceView;

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->sophonSurfaceView:Lorg/webrtc/sdk/SophonSurfaceView;

    .line 1914
    return-void
.end method

.method public setSubscribeConfig(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;)V
    .locals 0
    .param p1, "subscribeConfig"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfImpl$SubscribeConfig;->subscribeConfig:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliSubscribeConfig;

    .line 1922
    return-void
.end method
