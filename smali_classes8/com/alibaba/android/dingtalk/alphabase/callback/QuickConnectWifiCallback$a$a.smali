.class public final Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;
.super Ljava/lang/Object;
.source "QuickConnectWifiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;
    .locals 1
    .param p1, "isConnectWifiValid"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a$a;->a:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;

    iput-boolean p1, v0, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;->a:Z

    .line 44
    return-object p0
.end method
