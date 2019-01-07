.class public final Ldgs;
.super Lcqr;
.source "ChatListDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field public d:J

.field public e:Lcom/alibaba/wukong/im/Message;

.field public f:Lcom/alibaba/wukong/im/Conversation;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "fromImLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;>;"
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 28
    iput-object p1, p0, Ldgs;->b:Landroid/app/Activity;

    .line 29
    invoke-virtual {p0, p2}, Ldgs;->b(Ljava/util/List;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldgs;->g:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 3035
    if-nez p1, :cond_0

    .line 3036
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3038
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->msgId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    if-ltz p1, :cond_0

    iget-object v0, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcqr;->getItemViewType(I)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ldgs;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-boolean v1, p0, Ldgs;->g:Z

    invoke-static {v0, v1}, Ldgv;->a(Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;Z)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ldgs;->getItemViewType(I)I

    move-result v0

    .line 46
    .local v0, "ordinal":I
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldgl;

    .line 1437
    .local v1, "viewHolder":Ldgl;
    iget v2, v1, Ldgl;->i:I

    .line 48
    if-eq v2, v0, :cond_0

    .line 49
    const/4 p2, 0x0

    .line 53
    .end local v1    # "viewHolder":Ldgl;
    :cond_0
    if-nez p2, :cond_2

    .line 54
    iget-object v3, p0, Ldgs;->b:Landroid/app/Activity;

    .line 2094
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->values()[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v2

    .line 2097
    if-ltz v0, :cond_1

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2098
    aget-object v2, v2, v0

    .line 55
    :goto_0
    iget-boolean v4, p0, Ldgs;->g:Z

    .line 54
    invoke-static {v3, v2, v4}, Ldgt;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;Z)Ldgl;

    move-result-object v1

    .line 56
    .restart local v1    # "viewHolder":Ldgl;
    iget-object v2, p0, Ldgs;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ldgl;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_1
    invoke-virtual {v1, p3}, Ldgl;->a(Landroid/view/View;)V

    .line 63
    iget-wide v2, p0, Ldgs;->d:J

    .line 2377
    iput-wide v2, v1, Ldgl;->j:J

    .line 64
    iget-object v2, p0, Ldgs;->e:Lcom/alibaba/wukong/im/Message;

    .line 2381
    iput-object v2, v1, Ldgl;->k:Lcom/alibaba/wukong/im/Message;

    .line 65
    iget-object v2, p0, Ldgs;->f:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Ldgl;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2441
    iput v0, v1, Ldgl;->i:I

    .line 67
    iget-object v2, p0, Ldgs;->a:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Ldgl;->a(Ljava/util/List;I)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Ldgl;->a(Landroid/view/View;Z)V

    .line 70
    return-object p2

    .line 2100
    .end local v1    # "viewHolder":Ldgl;
    :cond_1
    sget-object v2, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldgl;

    .restart local v1    # "viewHolder":Ldgl;
    goto :goto_1
.end method
