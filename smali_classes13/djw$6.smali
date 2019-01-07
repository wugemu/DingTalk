.class public final Ldjw$6;
.super Ljava/lang/Object;
.source "InitializeHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjw;


# direct methods
.method public constructor <init>(Ldjw;)V
    .locals 0
    .param p1, "this$0"    # Ldjw;

    .prologue
    .line 996
    iput-object p1, p0, Ldjw$6;->a:Ldjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1021
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 996
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 996
    check-cast p1, Ljava/util/List;

    .line 2003
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2005
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2006
    if-eqz v0, :cond_2

    .line 2007
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 2008
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 2011
    goto :goto_0

    .line 2013
    :cond_0
    iget-object v0, p0, Ldjw$6;->a:Ldjw;

    .line 2103
    iput v1, v0, Ldjw;->g:I

    .line 2014
    :goto_2
    return-void

    .line 2015
    :cond_1
    iget-object v1, p0, Ldjw$6;->a:Ldjw;

    .line 3103
    iput v0, v1, Ldjw;->g:I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
