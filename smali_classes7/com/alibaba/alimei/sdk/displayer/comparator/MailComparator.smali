.class public Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;
.super Ljava/lang/Object;
.source "MailComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# static fields
.field public static instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)I
    .locals 6
    .param p1, "lhs"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p2, "rhs"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 23
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v2, v3, v4, v5}, Laiq;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 42
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_5
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_6
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->compare(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)I

    move-result v0

    return v0
.end method
