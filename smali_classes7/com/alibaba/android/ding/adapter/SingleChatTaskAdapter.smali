.class public final Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;
.super Landroid/widget/BaseAdapter;
.source "SingleChatTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:J

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLandroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a:Landroid/app/Activity;

    .line 40
    iput-wide p2, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->b:J

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->c:Ljava/lang/CharSequence;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->f:Landroid/widget/ListView;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    .prologue
    .line 28
    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1131
    iget-wide v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->b:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->notifyDataSetChanged()V

    .line 28
    return-void

    .line 1137
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1141
    if-eqz v0, :cond_2

    .line 1144
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1147
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1152
    :cond_4
    sget-object v0, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1153
    sget-object v0, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;

    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->c:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1159
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;

    iget-object v3, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->c:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->e:Ljava/util/List;

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
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->DING:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    .line 101
    invoke-virtual {v1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->ordinal()I

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 101
    :cond_0
    sget-object v1, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->TITLE:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    .line 102
    invoke-virtual {v1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->ordinal()I

    move-result v1

    goto :goto_0
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
    .line 72
    if-nez p2, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->getItemViewType(I)I

    move-result v0

    .line 74
    .local v0, "itemType":I
    sget-object v2, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->DING:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 75
    new-instance v1, Lbiu;

    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->f:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->c:Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v4}, Lbiu;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Ljava/lang/CharSequence;)V

    .line 76
    .local v1, "singleChatTaskHolder":Lbit;
    invoke-virtual {v1}, Lbit;->a()Landroid/view/View;

    move-result-object p2

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    .end local v0    # "itemType":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbit;->a(Ljava/lang/Object;)V

    .line 89
    return-object p2

    .line 79
    .end local v1    # "singleChatTaskHolder":Lbit;
    .restart local v0    # "itemType":I
    :cond_0
    new-instance v1, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;

    iget-object v2, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;-><init>(Landroid/content/Context;)V

    .line 80
    .restart local v1    # "singleChatTaskHolder":Lbit;
    invoke-virtual {v1}, Lbit;->a()Landroid/view/View;

    move-result-object p2

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v0    # "itemType":I
    .end local v1    # "singleChatTaskHolder":Lbit;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbit;

    .restart local v1    # "singleChatTaskHolder":Lbit;
    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->values()[Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
