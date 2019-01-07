.class public Lipd;
.super Ljava/lang/Object;
.source "H5SimplePlugin.java"

# interfaces
.implements Liov;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 11
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 0
    .param p1, "filter"    # Liof;

    .prologue
    .line 16
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
