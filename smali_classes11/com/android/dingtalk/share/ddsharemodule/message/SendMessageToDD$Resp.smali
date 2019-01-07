.class public Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;
.super Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;
.source "SendMessageToDD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/SendMessageToDD$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method
