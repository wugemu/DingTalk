.class public Lcom/alibaba/doraemon/impl/statistics/unify/FileDownloadUnifyStatisticsImpl;
.super Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;
.source "FileDownloadUnifyStatisticsImpl.java"


# static fields
.field private static final MODULE:Ljava/lang/String; = "file"

.field private static final MONITOR_POINT:Ljava/lang/String; = "download"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "file"

    return-object v0
.end method

.method protected getMonitorPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "download"

    return-object v0
.end method
