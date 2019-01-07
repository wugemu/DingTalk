.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniAppNum"
.end annotation


# instance fields
.field public cssReqNum:J

.field public imageSizeLimit60:J

.field public imgReqNum:J

.field public jsReqNum:J

.field public otherReqNum:J

.field public pageSize:J

.field public requestNum:J

.field public sizeLimit200:J

.field public sizeLimit50:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
