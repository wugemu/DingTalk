.class public Lorg/webrtc/alirtcInterface/SophonEngine$AliRTCStreamConfig;
.super Ljava/lang/Object;
.source "SophonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/SophonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AliRTCStreamConfig"
.end annotation


# instance fields
.field public stream_id:Ljava/lang/String;

.field final synthetic this$0:Lorg/webrtc/alirtcInterface/SophonEngine;

.field public track_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/webrtc/alirtcInterface/SophonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/alirtcInterface/SophonEngine;

    .prologue
    .line 21
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/SophonEngine$AliRTCStreamConfig;->this$0:Lorg/webrtc/alirtcInterface/SophonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
