.class public Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;
.super Ljava/lang/Object;
.source "AliUnPublisherInfo.java"


# instance fields
.field public call_id:Ljava/lang/String;

.field public session:Ljava/lang/String;

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
.method public getCall_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->call_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCall_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "call_id"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->call_id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->session:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliUnPublisherInfo;->user_id:Ljava/lang/String;

    .line 17
    return-void
.end method
