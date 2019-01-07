.class public final Lbni$a;
.super Ljava/lang/Object;
.source "QuickConnectWifiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lbni;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lbni;

    invoke-direct {v0}, Lbni;-><init>()V

    iput-object v0, p0, Lbni$a;->a:Lbni;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;)Lbni$a;
    .locals 1
    .param p1, "callback"    # Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .prologue
    .line 65
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-object p1, v0, Lbni;->h:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 66
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbni$a;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-object p1, v0, Lbni;->a:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public final a(Z)Lbni$a;
    .locals 1
    .param p1, "needSacnWifi"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-boolean p1, v0, Lbni;->d:Z

    .line 46
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbni$a;
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-object p1, v0, Lbni;->b:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public final b(Z)Lbni$a;
    .locals 1
    .param p1, "connectDirectly"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-boolean p1, v0, Lbni;->f:Z

    .line 56
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lbni$a;
    .locals 1
    .param p1, "psk"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lbni$a;->a:Lbni;

    iput-object p1, v0, Lbni;->c:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public final c(Z)Lbni$a;
    .locals 2
    .param p1, "needStaAuth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lbni$a;->a:Lbni;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbni;->g:Z

    .line 61
    return-object p0
.end method
