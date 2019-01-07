.class public final Ldid;
.super Ljava/lang/Object;
.source "GifTopicComprator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    check-cast p2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1017
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return v0

    .line 1019
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    move v0, v1

    .line 1020
    goto :goto_0

    .line 1021
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_4

    .line 1024
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    iget-wide v4, p2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    sub-long/2addr v2, v4

    .line 1025
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 1027
    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    move v0, v1

    .line 1028
    goto :goto_0

    .line 1030
    :cond_4
    const/4 v0, -0x1

    .line 13
    goto :goto_0
.end method
