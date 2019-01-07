.class public Lcom/android/dingtalk/share/ddsharemodule/message/DDVideoMessage;
.super Ljava/lang/Object;
.source "DDVideoMessage.java"

# interfaces
.implements Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportVersion()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7fffffff

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 15
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 20
    return-void
.end method
