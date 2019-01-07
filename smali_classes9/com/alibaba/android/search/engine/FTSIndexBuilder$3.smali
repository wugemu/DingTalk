.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;
.super Lcom/alibaba/bee/DataManipulationListener;
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
    .line 249
    invoke-direct {p0}, Lcom/alibaba/bee/DataManipulationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final beforeProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 253
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v0, "tbmsg_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;-><init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Leui;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
