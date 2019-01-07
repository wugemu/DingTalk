.class final Lbtr$b;
.super Ljava/lang/Object;
.source "LiveRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;J)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    .param p2, "time"    # J

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lbtr$b;->b:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    .line 133
    iput-wide p2, p0, Lbtr$b;->a:J

    .line 134
    return-void
.end method
