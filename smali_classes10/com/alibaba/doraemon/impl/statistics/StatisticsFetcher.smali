.class public Lcom/alibaba/doraemon/impl/statistics/StatisticsFetcher;
.super Ljava/lang/Object;
.source "StatisticsFetcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/ArtifactFetcher;


# instance fields
.field private mStatistics:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtifact()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsFetcher;->mStatistics:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/StatisticsFetcher;->mStatistics:Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;

    .line 24
    return-void
.end method
