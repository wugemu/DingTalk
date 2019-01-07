.class Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCStreamConfig;
.super Ljava/lang/Object;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AliRTCStreamConfig"
.end annotation


# instance fields
.field public stream_id:Ljava/lang/String;

.field final synthetic this$0:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

.field public track_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCStreamConfig;->this$0:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
