.class public Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliRendererConfig"
.end annotation


# instance fields
.field public api_level:I

.field public display_mode:I

.field public display_view:Landroid/view/Surface;

.field public enableBeauty:Z

.field public height:I

.field public render_id:I

.field public sharedContext:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->api_level:I

    .line 173
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-virtual {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    return-void
.end method
