.class public final Lcuf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChannelSessionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "channelSessionWrapperModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcuf;->a:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcuf;->b:Landroid/content/Context;

    .line 26
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "channelSessionWrapperModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcuf;->notifyDataSetChanged()V

    .line 37
    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelSessionWrapperModel;->itemType:I

    return v0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    move-object v0, p1

    check-cast v0, Ldal;

    .line 47
    .local v0, "baseServiceWindowViewHolder":Ldal;
    iget-object v1, p0, Lcuf;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldal;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lcuf;->b:Landroid/content/Context;

    .line 1019
    packed-switch p2, :pswitch_data_0

    .line 1041
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lctk$g;->item_channel_session:I

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1042
    new-instance v0, Ldar;

    invoke-direct {v0, v1, v2}, Ldar;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    :goto_0
    return-object v0

    .line 1021
    :pswitch_0
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->channel_session_title_layout:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1022
    new-instance v0, Ldat;

    invoke-direct {v0, v1}, Ldat;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1025
    :pswitch_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lctk$g;->item_channel_session:I

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1026
    new-instance v0, Ldar;

    invoke-direct {v0, v1, v2}, Ldar;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 1029
    :pswitch_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->channel_session_title_layout:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1030
    new-instance v0, Ldat;

    invoke-direct {v0, v1}, Ldat;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1033
    :pswitch_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lctk$g;->item_own_channel_session:I

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1034
    new-instance v0, Ldas;

    invoke-direct {v0, v1, v2}, Ldas;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 1037
    :pswitch_4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->channel_session_own_channel_description_layout:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1038
    new-instance v0, Ldat;

    invoke-direct {v0, v1}, Ldat;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
