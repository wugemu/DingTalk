.class public Lorg/webrtc/alirtcInterface/AliParticipantInfo;
.super Ljava/lang/Object;
.source "AliParticipantInfo.java"


# instance fields
.field public session:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->session:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/AliParticipantInfo;->user_id:Ljava/lang/String;

    .line 18
    return-void
.end method
