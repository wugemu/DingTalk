.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;
.super Lcom/alibaba/bee/DBStatusListener;
.source "FTSIndexBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/alibaba/bee/DBStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method public final onOpen(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v0, "onOpen %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$2$1;-><init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$2;Ljava/lang/String;)V

    invoke-static {v0}, Leui;->a(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
