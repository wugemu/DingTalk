.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniAppTiming"
.end annotation


# instance fields
.field public blankScreen:J

.field public containerVisible:J

.field public create:J

.field public domReady:J

.field public end:J

.field public finishLoad:J

.field public firstByte:J

.field public headScreen:J

.field public pageLoad:J

.field public pageNetLoad:J

.field public serverResponse:J

.field public srcClick:J

.field public start:J

.field public startRender:J

.field public startRenderFromNative:J

.field public stopLoading:J

.field public stopLoadingWithoutLocating:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
