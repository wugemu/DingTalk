.class public Lcom/alibaba/android/ding/data/object/ConversationBoardObject;
.super Ljava/lang/Object;
.source "ConversationBoardObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/ding/data/object/ConversationBoardObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b9ef1a5f14cd1ffL


# instance fields
.field private boardId:J

.field private cid:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private order:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lbce;)Lcom/alibaba/android/ding/data/object/ConversationBoardObject;
    .locals 4
    .param p0, "model"    # Lbce;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;-><init>()V

    .line 62
    .local v0, "boardObject":Lcom/alibaba/android/ding/data/object/ConversationBoardObject;
    iget-object v1, p0, Lbce;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->cid:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lbce;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->name:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lbce;->c:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 64
    iput v1, v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    .line 65
    iget-object v1, p0, Lbce;->d:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 65
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->boardId:J

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/android/ding/data/object/ConversationBoardObject;)I
    .locals 3
    .param p1, "other"    # Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 42
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget v1, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    iget v2, p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    if-gt v1, v2, :cond_0

    .line 48
    iget v0, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    iget v1, p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    if-ge v0, v1, :cond_2

    .line 49
    const/4 v0, -0x1

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->compareTo(Lcom/alibaba/android/ding/data/object/ConversationBoardObject;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 77
    .local v0, "that":Lcom/alibaba/android/ding/data/object/ConversationBoardObject;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBoardId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->boardId:J

    return-wide v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->order:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
