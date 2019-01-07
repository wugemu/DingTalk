.class public final Lbnr;
.super Lbnq;
.source "TimelineUsrAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;J)V
    .locals 0
    .param p1, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "uid"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lbnq;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    .line 38
    return-void
.end method

.method private static e(Landroid/view/View;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 164
    sget v1, Lbpu$d;->circle_item_data:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-nez v1, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lbnv;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lbnq;->a(Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    .line 1207
    .local v0, "holder":Lbnv;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lbnv;->e:Z

    .line 117
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 118
    iget-object v2, v0, Lbnv;->itemView:Landroid/view/View;

    sget v3, Lbpu$d;->tag_item_data:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    iget-object v2, v0, Lbnv;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 2188
    :cond_1
    iget-object v1, v0, Lbnv;->b:Landroid/view/View;

    .line 122
    .local v1, "summary":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    sget v2, Lbpu$d;->tag_item_data:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p1, "noticeHeader"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    const/4 v8, 0x0

    .line 52
    invoke-super {p0, p1}, Lbnq;->b(Ljava/util/List;)V

    .line 53
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    return-void

    .line 1082
    :cond_1
    iget-wide v4, p0, Lbnr;->c:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1085
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1086
    if-eqz v3, :cond_2

    .line 1090
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isTakePhotoPost()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1094
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;-><init>()V

    .line 1095
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 1096
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 1097
    new-instance v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;-><init>()V

    .line 1098
    const/4 v5, 0x2

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 1099
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->makeTakePhoto()V

    .line 1100
    iput-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 1102
    invoke-interface {p1, v8, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 61
    .local v0, "lastTimeDisplay":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 62
    .local v1, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v1, :cond_3

    .line 66
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    invoke-static {v4, v6, v7}, Lbqi;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "timeToDisplay":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 68
    move-object v0, v2

    .line 69
    iput-boolean v8, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->hideTime:Z

    .line 73
    :goto_1
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->timeToDisplay:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->hideTime:Z

    goto :goto_1
.end method

.method protected final c()Lboh;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lboi;

    invoke-direct {v0}, Lboi;-><init>()V

    return-object v0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    sget v3, Lbpu$d;->tag_item_data:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    .line 140
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 141
    .local v2, "viewType":I
    packed-switch v2, :pswitch_data_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 147
    instance-of v3, v1, Lbnv;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 148
    check-cast v0, Lbnv;

    .line 149
    .local v0, "holder":Lbnv;
    iget-object v3, v0, Lbnv;->itemView:Landroid/view/View;

    .line 4156
    invoke-static {v3}, Lbnr;->e(Landroid/view/View;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v4

    .line 4157
    if-eqz v4, :cond_0

    .line 4159
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4160
    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0

    .line 3172
    .end local v0    # "holder":Lbnv;
    :pswitch_0
    invoke-static {p1}, Lbnr;->e(Landroid/view/View;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v3

    .line 3173
    if-eqz v3, :cond_0

    .line 3175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3176
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3177
    const-string/jumbo v6, "extra_uid"

    invoke-virtual {p0}, Lbnr;->a()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3178
    const-string/jumbo v6, "extra_post"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3179
    instance-of v3, v4, Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 3180
    const/high16 v3, 0x10000000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3183
    :cond_2
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3184
    :catch_0
    move-exception v3

    .line 3185
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 4076
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lbnr;->a(Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    return-object v0
.end method
