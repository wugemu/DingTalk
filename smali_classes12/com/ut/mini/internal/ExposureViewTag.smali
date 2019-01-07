.class public Lcom/ut/mini/internal/ExposureViewTag;
.super Ljava/lang/Object;
.source "ExposureViewTag.java"


# instance fields
.field public block:Ljava/lang/String;

.field public notExposure:Z

.field public viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/internal/ExposureViewTag;->notExposure:Z

    return-void
.end method
