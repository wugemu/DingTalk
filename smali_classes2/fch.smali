.class public final Lfch;
.super Lfce;
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
    invoke-direct {p0, p1, p2, p3}, Lfce;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    .line 38
    return-void
.end method

.method private static e(Landroid/view/View;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 165
    sget v1, Lezg$h;->circle_item_data:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-nez v1, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lfcm;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lfce;->a(Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    .line 1217
    .local v0, "holder":Lfcm;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lfcm;->e:Z

    .line 116
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 117
    iget-object v2, v0, Lfcm;->itemView:Landroid/view/View;

    sget v3, Lezg$h;->tag_item_data:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    iget-object v2, v0, Lfcm;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 2198
    :cond_1
    iget-object v1, v0, Lfcm;->b:Landroid/view/View;

    .line 121
    .local v1, "summary":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    sget v2, Lezg$h;->tag_item_data:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 126
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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    const/4 v8, 0x0

    .line 52
    invoke-super {p0, p1}, Lfce;->b(Ljava/util/List;)V

    .line 53
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    return-void

    .line 1081
    :cond_1
    iget-wide v4, p0, Lfch;->b:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1084
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1085
    if-eqz v3, :cond_2

    .line 1089
    invoke-virtual {v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isTakePhotoPost()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1093
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;-><init>()V

    .line 1094
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 1095
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 1096
    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    .line 1097
    const/4 v5, 0x2

    iput v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 1098
    invoke-virtual {v4}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->makeTakePhoto()V

    .line 1099
    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 1101
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

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 62
    .local v1, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v1, :cond_3

    .line 66
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    invoke-static {v4, v6, v7}, Lfff;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "timeToDisplay":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 68
    move-object v0, v2

    .line 69
    iput-boolean v8, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->hideTime:Z

    .line 73
    :goto_1
    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->timeToDisplay:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->hideTime:Z

    goto :goto_1
.end method

.method protected final c()Lfcy;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lfcz;

    invoke-direct {v0}, Lfcz;-><init>()V

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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 134
    sget v3, Lezg$h;->tag_item_data:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    .line 139
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, "viewType":I
    packed-switch v2, :pswitch_data_0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 146
    instance-of v3, v1, Lfcm;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 147
    check-cast v0, Lfcm;

    .line 148
    .local v0, "holder":Lfcm;
    iget-object v3, v0, Lfcm;->itemView:Landroid/view/View;

    .line 4155
    invoke-static {v3}, Lfch;->e(Landroid/view/View;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v4

    .line 4156
    if-eqz v4, :cond_0

    .line 4160
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4161
    invoke-static {v3, v4}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0

    .line 3173
    .end local v0    # "holder":Lfcm;
    :pswitch_0
    invoke-static {p1}, Lfch;->e(Landroid/view/View;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v3

    .line 3174
    if-eqz v3, :cond_0

    .line 3178
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3179
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3180
    const-string/jumbo v6, "extra_uid"

    invoke-virtual {p0}, Lfch;->a()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3181
    const-string/jumbo v6, "extra_post"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3182
    instance-of v3, v4, Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 3183
    const/high16 v3, 0x10000000

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3186
    :cond_2
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3187
    :catch_0
    move-exception v3

    .line 3188
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 4060
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 140
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
    invoke-virtual {p0, p1, p2}, Lfch;->a(Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    return-object v0
.end method
