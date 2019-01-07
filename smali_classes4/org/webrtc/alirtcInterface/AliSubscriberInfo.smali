.class public Lorg/webrtc/alirtcInterface/AliSubscriberInfo;
.super Ljava/lang/Object;
.source "AliSubscriberInfo.java"


# instance fields
.field public session:Ljava/lang/String;

.field public stream_type:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getStream_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->stream_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->session:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setStream_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream_type"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->stream_type:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliSubscriberInfo;->user_id:Ljava/lang/String;

    .line 17
    return-void
.end method
