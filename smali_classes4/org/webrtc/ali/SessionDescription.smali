.class public Lorg/webrtc/ali/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/SessionDescription$Type;
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final type:Lorg/webrtc/ali/SessionDescription$Type;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/SessionDescription$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lorg/webrtc/ali/SessionDescription$Type;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/webrtc/ali/SessionDescription;->type:Lorg/webrtc/ali/SessionDescription$Type;

    .line 41
    iput-object p2, p0, Lorg/webrtc/ali/SessionDescription;->description:Ljava/lang/String;

    .line 42
    return-void
.end method
