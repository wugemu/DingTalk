.class public Lcom/taobao/dp/http/DefaultUrlRequestService;
.super Ljava/lang/Object;
.source "DefaultUrlRequestService.java"

# interfaces
.implements Lcom/taobao/dp/http/IUrlRequestService;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/http/IResponseReceiver;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "resReceiver"    # Lcom/taobao/dp/http/IResponseReceiver;

    .prologue
    .line 21
    return-void
.end method
