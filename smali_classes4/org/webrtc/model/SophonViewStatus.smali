.class public Lorg/webrtc/model/SophonViewStatus;
.super Ljava/lang/Object;
.source "SophonViewStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/model/SophonViewStatus$ViewMode;
    }
.end annotation


# instance fields
.field public callId:Ljava/lang/String;

.field public height:I

.field public isAddDisplayWindow:Z

.field public renderMode:I

.field public surfaceView:Landroid/view/SurfaceView;

.field public videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

.field public viewMode:Lorg/webrtc/model/SophonViewStatus$ViewMode;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/webrtc/model/SophonViewStatus;->height:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    return v0
.end method

.method public getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    return-object v0
.end method

.method public getViewMode()Lorg/webrtc/model/SophonViewStatus$ViewMode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/webrtc/model/SophonViewStatus;->viewMode:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/webrtc/model/SophonViewStatus;->width:I

    return v0
.end method

.method public isAddDisplayWindow()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    return v0
.end method

.method public setAddDisplayWindow(Z)V
    .locals 0
    .param p1, "addDisplayWindow"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    .line 66
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/webrtc/model/SophonViewStatus;->height:I

    .line 34
    return-void
.end method

.method public setRenderMode(I)V
    .locals 0
    .param p1, "renderMode"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    .line 82
    return-void
.end method

.method public setVideoType(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V
    .locals 0
    .param p1, "videoType"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    .line 74
    return-void
.end method

.method public setViewMode(Lorg/webrtc/model/SophonViewStatus$ViewMode;)V
    .locals 0
    .param p1, "viewMode"    # Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/webrtc/model/SophonViewStatus;->viewMode:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .line 58
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/webrtc/model/SophonViewStatus;->width:I

    .line 42
    return-void
.end method
