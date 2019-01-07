.class public Lcom/uc/webview/export/WebMessage;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Lcom/uc/webview/export/WebMessagePort;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/uc/webview/export/WebMessage;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/uc/webview/export/WebMessagePort;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/uc/webview/export/WebMessage;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/uc/webview/export/WebMessage;->b:[Lcom/uc/webview/export/WebMessagePort;

    .line 49
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/uc/webview/export/WebMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[Lcom/uc/webview/export/WebMessagePort;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/uc/webview/export/WebMessage;->b:[Lcom/uc/webview/export/WebMessagePort;

    return-object v0
.end method
