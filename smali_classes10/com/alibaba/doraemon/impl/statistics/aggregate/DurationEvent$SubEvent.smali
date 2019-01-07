.class public Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
.super Ljava/lang/Object;
.source "DurationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubEvent"
.end annotation


# instance fields
.field public isFinished:Z

.field public name:Ljava/lang/String;

.field public start:J

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->start:J

    .line 95
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->value:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->isFinished:Z

    return-void
.end method
