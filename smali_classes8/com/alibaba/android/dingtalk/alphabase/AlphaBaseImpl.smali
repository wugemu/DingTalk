.class public Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseImpl;
.super Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;
.source "AlphaBaseImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public quickConnectWifi(Lbni;)V
    .locals 1
    .param p1, "request"    # Lbni;

    .prologue
    .line 15
    invoke-static {}, Lbmc;->a()Lbmc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmc;->a(Lbni;)V

    .line 16
    return-void
.end method
