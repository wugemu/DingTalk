.class public Lcom/alibaba/lightapp/runtime/eapp/api/UniPlugin;
.super Ljava/lang/Object;
.source "UniPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lhgm;)Z
    .locals 1
    .param p1, "event"    # Lhgm;

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lhgm;)Z
    .locals 1
    .param p1, "event"    # Lhgm;

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public onInitialize()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method
