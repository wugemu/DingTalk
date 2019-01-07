.class public Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;
.super Ljava/lang/Object;
.source "SophonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/SophonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliRendererConfig"
.end annotation


# instance fields
.field public apiLevel:I

.field public displayMode:I

.field public displayView:Landroid/view/SurfaceView;

.field public enableBeauty:Z

.field public height:I

.field public sharedContext:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->apiLevel:I

    .line 31
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayMode:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    return-void
.end method
