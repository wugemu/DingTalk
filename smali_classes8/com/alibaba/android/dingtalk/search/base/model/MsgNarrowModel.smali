.class public Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;
.super Ljava/lang/Object;
.source "MsgNarrowModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x222ac8bad740de5eL


# instance fields
.field private mCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTime:J

.field private mFromTime:J

.field private mUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 34
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;J)V
    .locals 3
    .param p3, "fromTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 34
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    .line 43
    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;JJ)V
    .locals 3
    .param p3, "fromTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 34
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    .line 49
    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 50
    iput-wide p5, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 51
    return-void
.end method


# virtual methods
.method public getCids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    return-wide v0
.end method

.method public getFromTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    return-wide v0
.end method

.method public getUids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    return-object v0
.end method

.method public hasSearchCondition()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 100
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    .line 110
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 111
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 112
    return-void
.end method

.method public setCids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mCids:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setFromTime(J)V
    .locals 1
    .param p1, "fromTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 80
    return-void
.end method

.method public setTimeSpan(JJ)V
    .locals 1
    .param p1, "fromTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mFromTime:J

    .line 84
    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mEndTime:J

    .line 85
    return-void
.end method

.method public setUids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->mUids:Ljava/util/List;

    .line 71
    return-void
.end method
