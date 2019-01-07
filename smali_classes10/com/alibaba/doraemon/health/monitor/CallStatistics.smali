.class public Lcom/alibaba/doraemon/health/monitor/CallStatistics;
.super Ljava/lang/Object;
.source "CallStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;
    }
.end annotation


# instance fields
.field public mOsVersion:I

.field public mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/doraemon/health/monitor/CallStatistics$Record;",
            ">;"
        }
    .end annotation
.end field

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mOsVersion:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/health/monitor/CallStatistics;->mRecords:Ljava/util/ArrayList;

    .line 29
    return-void
.end method
