.class public final Lbeq;
.super Ljava/lang/Object;
.source "DingCommentRemindObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;)V
    .locals 2
    .param p1, "entry"    # Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->dingId:J

    iput-wide v0, p0, Lbeq;->a:J

    .line 33
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentId:J

    iput-wide v0, p0, Lbeq;->b:J

    .line 34
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->senderId:J

    iput-wide v0, p0, Lbeq;->c:J

    .line 35
    iget v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentType:I

    iput v0, p0, Lbeq;->d:I

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->textContent:Ljava/lang/String;

    iput-object v0, p0, Lbeq;->e:Ljava/lang/String;

    .line 37
    iget-wide v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentCreateAt:J

    iput-wide v0, p0, Lbeq;->f:J

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentAtUids:Ljava/lang/String;

    invoke-static {v0}, Lbjp;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbeq;->g:Ljava/util/Map;

    .line 39
    iget-boolean v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentIsDeleted:Z

    iput-boolean v0, p0, Lbeq;->h:Z

    .line 40
    iget-boolean v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentIsAttachment:Z

    iput-boolean v0, p0, Lbeq;->i:Z

    .line 41
    iget-object v0, p1, Lcom/alibaba/android/ding/db/entry/EntryDingCommentRemind;->commentNote:Ljava/lang/String;

    iput-object v0, p0, Lbeq;->j:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 180
    check-cast v0, Lbeq;

    .line 181
    .local v0, "that":Lbeq;
    iget-wide v4, p0, Lbeq;->b:J

    iget-wide v6, v0, Lbeq;->b:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 186
    iget-wide v0, p0, Lbeq;->b:J

    iget-wide v2, p0, Lbeq;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
