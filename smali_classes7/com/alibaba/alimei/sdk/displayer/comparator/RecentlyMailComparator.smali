.class public Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;
.super Ljava/lang/Object;
.source "RecentlyMailComparator.java"

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
.field public static instance:Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)I
    .locals 4
    .param p1, "lhs"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p2, "rhs"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 23
    const/4 v0, -0x1

    .line 28
    :goto_0
    return v0

    .line 24
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;->compare(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)I

    move-result v0

    return v0
.end method
