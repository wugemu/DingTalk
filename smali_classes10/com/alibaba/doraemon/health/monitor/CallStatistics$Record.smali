.class public Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
.super Ljava/lang/Object;
.source "CallStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/health/monitor/CallStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public mCallTime:J

.field public mCaller:Ljava/lang/String;

.field public mMethod:Ljava/lang/String;

.field public mParams:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
