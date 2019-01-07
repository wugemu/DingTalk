.class public abstract Ldvv;
.super Landroid/widget/BaseAdapter;
.source "OneBoxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public b:Landroid/app/Activity;

.field public c:J

.field private d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .prologue
    .line 41
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Ldvv;->b:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Ldvv;->d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .line 44
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :goto_0
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldvv;->a:Ljava/util/List;

    goto :goto_0
.end method

.method private d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_1

    iget-object v3, p0, Ldvv;->d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v4, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v3, v4, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 117
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 120
    iget-object v3, p0, Ldvv;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(I)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
.end method

.method final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldvv;->a:Ljava/util/List;

    .line 129
    :cond_0
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const/4 p1, 0x0

    .line 132
    :cond_1
    if-eqz p2, :cond_2

    .line 133
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Ldvv;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    .line 1056
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v0, Ldvv$3;->a:[I

    iget-object v1, p0, Ldvv;->d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1059
    invoke-direct {p0, p1}, Ldvv;->c(Ljava/util/List;)V

    .line 1052
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ldvv;->notifyDataSetChanged()V

    .line 48
    return-void

    .line 1078
    :pswitch_0
    invoke-direct {p0, p1}, Ldvv;->c(Ljava/util/List;)V

    .line 1079
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    .line 1083
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldvv;->d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_0

    .line 1084
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 1056
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    .line 1094
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v0, Ldvv$3;->a:[I

    iget-object v1, p0, Ldvv;->d:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1106
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldvv;->a:Ljava/util/List;

    .line 1109
    :cond_0
    if-eqz p1, :cond_1

    .line 1110
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldvv;->notifyDataSetChanged()V

    .line 91
    return-void

    .line 1100
    :pswitch_0
    invoke-direct {p0, p1}, Ldvv;->d(Ljava/util/List;)V

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    invoke-virtual {p0, p1}, Ldvv;->a(I)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    if-nez p2, :cond_5

    .line 173
    invoke-virtual {p0, p1}, Ldvv;->a(I)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    move-result-object v3

    iget-object v4, p0, Ldvv;->b:Landroid/app/Activity;

    .line 2032
    sget-object v5, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->WORK_ITEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    if-ne v3, v5, :cond_1

    .line 2033
    new-instance v2, Ldwn;

    invoke-direct {v2, v4}, Ldwn;-><init>(Landroid/app/Activity;)V

    .line 174
    .local v2, "viewHolder":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->b()Landroid/view/View;

    move-result-object p2

    .line 175
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    :goto_1
    iget-object v3, p0, Ldvv;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0, v1}, Ldvv;->a(Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;->a(Ldvv;)V

    .line 187
    move-object v0, v2

    .line 188
    .local v0, "holder":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
    new-instance v3, Ldvv$1;

    invoke-direct {v3, p0, v0, v1, p1}, Ldvv$1;-><init>(Ldvv;Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v3, Ldvv$2;

    invoke-direct {v3, p0, v0, v1, p1}, Ldvv$2;-><init>(Ldvv;Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;Ljava/lang/Object;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    return-object p2

    .line 2034
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .end local v2    # "viewHolder":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
    :cond_1
    sget-object v5, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    if-ne v3, v5, :cond_2

    .line 2035
    new-instance v2, Ldwl;

    invoke-direct {v2, v4}, Ldwl;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 2036
    :cond_2
    sget-object v5, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_SYSTEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    if-ne v3, v5, :cond_3

    .line 2037
    new-instance v2, Ldwm;

    invoke-direct {v2, v4}, Ldwm;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 2038
    :cond_3
    sget-object v5, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_ADD:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    if-ne v3, v5, :cond_4

    .line 2039
    new-instance v2, Ldwk;

    invoke-direct {v2, v4}, Ldwk;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 2041
    :cond_4
    new-instance v2, Ldwl;

    invoke-direct {v2, v4}, Ldwl;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;

    .restart local v2    # "viewHolder":Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Ldvv;, "Ldvv<TT;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->values()[Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
