.class public final Lase;
.super Ljava/lang/Object;
.source "CalendarReportDataListObject.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lasf;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;JJJLjava/lang/String;J)V
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .param p3, "reportTime"    # J
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "tzid"    # Ljava/lang/String;
    .param p10, "maxVersion"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lasf;",
            ">;JJJ",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "reportData":Ljava/util/List;, "Ljava/util/List<Lasf;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lase;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lase;->b:Ljava/util/List;

    .line 21
    iput-wide p3, p0, Lase;->c:J

    .line 22
    iput-wide p5, p0, Lase;->d:J

    .line 23
    iput-wide p7, p0, Lase;->e:J

    .line 24
    iput-object p9, p0, Lase;->f:Ljava/lang/String;

    .line 25
    iput-wide p10, p0, Lase;->g:J

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Laqj;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 57
    new-instance v0, Laqj;

    invoke-direct {v0}, Laqj;-><init>()V

    .line 58
    .local v0, "calendarReportDataListModel":Laqj;
    iget-object v2, p0, Lase;->a:Ljava/lang/String;

    iput-object v2, v0, Laqj;->a:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lase;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laqj;->b:Ljava/util/List;

    .line 61
    iget-object v2, p0, Lase;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasf;

    .line 62
    .local v1, "calendarReportDataObject":Lasf;
    if-eqz v1, :cond_0

    .line 65
    iget-object v3, v0, Laqj;->b:Ljava/util/List;

    .line 1036
    new-instance v4, Laqk;

    invoke-direct {v4}, Laqk;-><init>()V

    .line 1037
    iget-wide v6, v1, Lasf;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqk;->a:Ljava/lang/Long;

    .line 1038
    iget-wide v6, v1, Lasf;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqk;->b:Ljava/lang/Long;

    .line 1039
    iget-wide v6, v1, Lasf;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqk;->c:Ljava/lang/Long;

    .line 1040
    iget-wide v6, v1, Lasf;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Laqk;->d:Ljava/lang/Long;

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1    # "calendarReportDataObject":Lasf;
    :cond_1
    iget-wide v2, p0, Lase;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Laqj;->c:Ljava/lang/Long;

    .line 69
    iget-wide v2, p0, Lase;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Laqj;->e:Ljava/lang/Long;

    .line 70
    iget-wide v2, p0, Lase;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Laqj;->d:Ljava/lang/Long;

    .line 71
    iget-object v2, p0, Lase;->f:Ljava/lang/String;

    iput-object v2, v0, Laqj;->f:Ljava/lang/String;

    .line 72
    iget-wide v2, p0, Lase;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Laqj;->g:Ljava/lang/Long;

    .line 73
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v4, 0x27

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CalendarReportDataListObject{mFolderId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReportData.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lase;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lase;->b:Ljava/util/List;

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lase;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lase;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lase;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTzid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lase;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lase;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
