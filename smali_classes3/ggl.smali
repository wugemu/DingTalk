.class public final Lggl;
.super Ljava/lang/Object;
.source "RecentViewHolderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)I
    .locals 2
    .param p0, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .prologue
    const/4 v0, 0x1

    .line 53
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-lez v1, :cond_0

    .line 54
    iget v1, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    sparse-switch v1, :sswitch_data_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 65
    :sswitch_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->hasNonImageDentry:Z

    if-nez v1, :cond_1

    .line 69
    iget v1, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-ne v1, v0, :cond_2

    .line 70
    const/4 v0, 0x2

    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x5b -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
    .end sparse-switch
.end method
