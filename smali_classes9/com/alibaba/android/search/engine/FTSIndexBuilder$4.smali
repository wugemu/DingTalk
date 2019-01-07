.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;
.super Lcom/alibaba/bee/DBTableListener;
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
    .line 295
    invoke-direct {p0}, Lcom/alibaba/bee/DBTableListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 325
    return-void
.end method

.method public final onCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 298
    if-eqz p2, :cond_0

    const-string/jumbo v0, "tbmsg_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;-><init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Leui;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onDrop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method
