.class public Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;
.super Ljava/lang/Object;
.source "TagComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/alimei/sdk/model/MailTagModel;Lcom/alibaba/alimei/sdk/model/MailTagModel;)I
    .locals 6
    .param p1, "lModel"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .param p2, "rModel"    # Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 20
    iget v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    if-nez v2, :cond_1

    iget v2, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    iget v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    if-eqz v2, :cond_2

    iget v2, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mColor:I

    if-nez v2, :cond_2

    move v0, v1

    .line 25
    goto :goto_0

    .line 28
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTimeStamp:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 34
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_4
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/comparator/TagComparator;->compare(Lcom/alibaba/alimei/sdk/model/MailTagModel;Lcom/alibaba/alimei/sdk/model/MailTagModel;)I

    move-result v0

    return v0
.end method
