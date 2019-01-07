.class public final Lbfv;
.super Ljava/lang/Object;
.source "MinutesDetailObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->getValue()I

    move-result v0

    iput v0, p0, Lbfv;->c:I

    return-void
.end method

.method public static a(Lbdt;)Lbfv;
    .locals 6
    .param p0, "model"    # Lbdt;

    .prologue
    const-wide/16 v4, 0x0

    .line 65
    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lbfv;

    invoke-direct {v0}, Lbfv;-><init>()V

    .line 68
    .local v0, "minutesDetailObject":Lbfv;
    iget-object v1, p0, Lbdt;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 68
    iput-wide v2, v0, Lbfv;->a:J

    .line 69
    iget-object v1, p0, Lbdt;->b:Ljava/lang/String;

    iput-object v1, v0, Lbfv;->b:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lbdt;->c:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 70
    iput v1, v0, Lbfv;->c:I

    .line 71
    iget-object v1, p0, Lbdt;->d:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 71
    iput-wide v2, v0, Lbfv;->d:J

    .line 72
    iget-object v1, p0, Lbdt;->e:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 72
    iput-wide v2, v0, Lbfv;->e:J

    .line 77
    .end local v0    # "minutesDetailObject":Lbfv;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lbfv;->b:Ljava/lang/String;

    .line 3049
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3053
    invoke-static {v0}, Lbao;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;

    move-result-object v1

    .line 3054
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;->getLines()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3055
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 3057
    invoke-virtual {v1}, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLines;->getLines()Ljava/util/List;

    move-result-object v3

    .line 3058
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 3059
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;

    .line 3060
    if-eqz v0, :cond_0

    .line 3061
    invoke-virtual {v0}, Lcom/alibaba/android/ding/biz/meeting/minutes/editor/MeetingMinutesLine;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3062
    add-int/lit8 v0, v4, -0x1

    if-eq v1, v0, :cond_0

    .line 3063
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3058
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3067
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MeetingMinutesDetailObject{mDingId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbfv;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbfv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbfv;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRecorderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbfv;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMinutesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbfv;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
