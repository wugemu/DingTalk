.class public Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;
.super Lcom/alibaba/android/ding/base/objects/ObjectDing;
.source "ObjectDingReceived.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lazm;)V
    .locals 0
    .param p1, "model"    # Lazm;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>(Lazm;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lazn;)V
    .locals 1
    .param p1, "model"    # Lazn;

    .prologue
    .line 20
    iget-object v0, p1, Lazn;->a:Lazm;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;-><init>(Lazm;)V

    .line 21
    return-void
.end method
