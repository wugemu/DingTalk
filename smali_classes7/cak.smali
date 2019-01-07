.class public final Lcak;
.super Landroid/widget/BaseAdapter;
.source "FestivalRedPacketsReplyAdapter.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcak;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcak;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 30
    iput-object p3, p0, Lcak;->b:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcak;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcak;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v2, p0, Lcak;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcaj$e;->item_festival_redpackets_reply:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lcaq;

    iget-object v2, p0, Lcak;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcak;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v2, v3, p2}, Lcaq;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)V

    .line 60
    .local v0, "holder":Lcaq;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcak;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "reply":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 66
    check-cast v1, Ljava/lang/String;

    .end local v1    # "reply":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcaq;->a(Ljava/lang/String;)V

    .line 70
    :goto_1
    return-object p2

    .line 62
    .end local v0    # "holder":Lcaq;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcaq;

    .restart local v0    # "holder":Lcaq;
    goto :goto_0

    .line 68
    .restart local v1    # "reply":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v4}, Lcaq;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
