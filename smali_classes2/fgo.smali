.class public final Lfgo;
.super Landroid/widget/BaseAdapter;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgo$j;,
        Lfgo$k;,
        Lfgo$i;,
        Lfgo$d;,
        Lfgo$e;,
        Lfgo$c;,
        Lfgo$b;,
        Lfgo$g;,
        Lfgo$a;,
        Lfgo$f;,
        Lfgo$h;,
        Lfgo$l;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfgm;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

.field private e:Lflt;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Lflt;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
    .param p2, "dataManager"    # Lflt;
    .param p3, "fromPage"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    iput-object p1, p0, Lfgo;->d:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 78
    iput-object p2, p0, Lfgo;->e:Lflt;

    .line 79
    iput-object p3, p0, Lfgo;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic a(Lfgo;)Lflt;
    .locals 1
    .param p0, "x0"    # Lfgo;

    .prologue
    .line 58
    iget-object v0, p0, Lfgo;->e:Lflt;

    return-object v0
.end method

.method static synthetic b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
    .locals 1
    .param p0, "x0"    # Lfgo;

    .prologue
    .line 58
    iget-object v0, p0, Lfgo;->d:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    return-object v0
.end method

.method static synthetic c(Lfgo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfgo;

    .prologue
    .line 58
    iget-object v0, p0, Lfgo;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "orgApplyObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;>;"
    if-eqz p1, :cond_2

    .line 84
    iget-object v0, p0, Lfgo;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfgo;->c:Ljava/util/List;

    .line 87
    :cond_0
    iget-object v0, p0, Lfgo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lfgo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    :cond_1
    iget-object v0, p0, Lfgo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_2
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lfgo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lfgo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 106
    iget-object v2, p0, Lfgo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    iget-object v2, p0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgm;

    .line 110
    .local v0, "item":Lfgm;
    if-eqz v0, :cond_0

    .line 113
    iget v1, v0, Lfgm;->a:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lfgo;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgm;

    .line 145
    .local v2, "item":Lfgm;
    if-nez v2, :cond_0

    move-object v0, p2

    .line 227
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 148
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    .line 149
    .local v5, "viewHolder":Lfgo$l;
    if-nez p2, :cond_5

    .line 150
    invoke-virtual {p0, p1}, Lfgo;->getItemViewType(I)I

    move-result v4

    .line 151
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    .line 216
    :goto_1
    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {v5}, Lfgo$l;->a()Landroid/view/View;

    move-result-object p2

    .line 218
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    .end local v4    # "type":I
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 224
    invoke-virtual {v5, p1, v2}, Lfgo$l;->a(ILfgm;)V

    :cond_2
    move-object v0, p2

    .line 227
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 153
    .end local v0    # "convertView":Landroid/view/View;
    .restart local v4    # "type":I
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_0
    new-instance v5, Lfgo$a;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$a;-><init>(Lfgo;)V

    .line 154
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 156
    :pswitch_1
    new-instance v5, Lfgo$b;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$b;-><init>(Lfgo;)V

    .line 157
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 160
    :pswitch_2
    iget v6, p0, Lfgo;->b:I

    if-nez v6, :cond_3

    .line 161
    iput p1, p0, Lfgo;->b:I

    .line 164
    :cond_3
    const/4 v3, 0x0

    .line 165
    .local v3, "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    iget-object v6, p0, Lfgo;->c:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 167
    iget v6, p0, Lfgo;->b:I

    sub-int v1, p1, v6

    .line 168
    .local v1, "index":I
    if-ltz v1, :cond_4

    iget-object v6, p0, Lfgo;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 169
    iget-object v6, p0, Lfgo;->c:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 173
    .end local v1    # "index":I
    .restart local v3    # "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_4
    new-instance v5, Lfgo$c;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0, v3}, Lfgo$c;-><init>(Lfgo;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    .line 174
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 176
    .end local v3    # "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :pswitch_3
    new-instance v5, Lfgo$h;

    .end local v5    # "viewHolder":Lfgo$l;
    iget-object v6, p0, Lfgo;->d:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    new-instance v7, Lfgo$1;

    invoke-direct {v7, p0}, Lfgo$1;-><init>(Lfgo;)V

    iget-object v8, p0, Lfgo;->d:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    iget-object v8, v8, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v9, p0, Lfgo;->f:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;)V

    .line 191
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 193
    :pswitch_4
    new-instance v5, Lfgo$f;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$f;-><init>(Lfgo;)V

    .line 194
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 196
    :pswitch_5
    new-instance v5, Lfgo$g;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$g;-><init>(Lfgo;)V

    .line 197
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 199
    :pswitch_6
    new-instance v5, Lfgo$e;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$e;-><init>(Lfgo;)V

    .line 200
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 202
    :pswitch_7
    new-instance v5, Lfgo$d;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$d;-><init>(Lfgo;)V

    .line 203
    .restart local v5    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 205
    :pswitch_8
    new-instance v5, Lfgo$i;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$i;-><init>(Lfgo;)V

    .line 206
    .restart local v5    # "viewHolder":Lfgo$l;
    goto/16 :goto_1

    .line 208
    :pswitch_9
    new-instance v5, Lfgo$k;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$k;-><init>(Lfgo;)V

    .line 209
    .restart local v5    # "viewHolder":Lfgo$l;
    goto/16 :goto_1

    .line 211
    :pswitch_a
    new-instance v5, Lfgo$j;

    .end local v5    # "viewHolder":Lfgo$l;
    invoke-direct {v5, p0}, Lfgo$j;-><init>(Lfgo;)V

    .restart local v5    # "viewHolder":Lfgo$l;
    goto/16 :goto_1

    .line 221
    .end local v4    # "type":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "viewHolder":Lfgo$l;
    check-cast v5, Lfgo$l;

    .restart local v5    # "viewHolder":Lfgo$l;
    goto/16 :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0xb

    return v0
.end method
