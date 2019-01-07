.class public Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;
.super Lckb;
.source "AlphaBaseInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static getInterfaceImpl()Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alphabase/AlphaBaseInterface;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 23
    return-void
.end method

.method public quickConnectWifi(Lbni;)V
    .locals 0
    .param p1, "request"    # Lbni;

    .prologue
    .line 27
    return-void
.end method
