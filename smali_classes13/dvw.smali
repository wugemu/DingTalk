.class public final Ldvw;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;
.implements Ldvy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;",
        "Ldvy",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/OneBoxObject;",
        ">;"
    }
.end annotation


# static fields
.field public static i:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Ldrv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ldwe;

.field private D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

.field private E:Landroid/content/BroadcastReceiver;

.field public a:Ldvu;

.field public b:Ldvt;

.field protected c:Z

.field public d:I

.field public e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

.field public f:Ldvs;

.field public g:I

.field public h:Lcom/alibaba/wukong/im/Conversation;

.field private j:Landroid/app/Activity;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ldvv;

.field private t:Ldvr;

.field private u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

.field private v:Z

.field private w:J

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 587
    new-instance v0, Ldvw$6;

    invoke-direct {v0}, Ldvw$6;-><init>()V

    sput-object v0, Ldvw;->i:Lcpq;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ldvu;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Ldvu;

    .prologue
    .line 184
    sget-object v0, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {p0, p1, p2, v0}, Ldvw;-><init>(Landroid/app/Activity;Ldvu;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ldvu;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Ldvu;
    .param p3, "type"    # Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .prologue
    const/4 v3, 0x1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v3, p0, Ldvw;->l:Z

    .line 112
    iput-boolean v3, p0, Ldvw;->c:Z

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Ldvw;->r:I

    .line 824
    new-instance v1, Ldvw$9;

    invoke-direct {v1, p0}, Ldvw$9;-><init>(Ldvw;)V

    iput-object v1, p0, Ldvw;->E:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Ldvw;->j:Landroid/app/Activity;

    .line 151
    iput-object p2, p0, Ldvw;->a:Ldvu;

    .line 152
    iput-object p3, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .line 153
    new-instance v1, Ldvp;

    invoke-direct {v1, p1, p0, p3}, Ldvp;-><init>(Landroid/app/Activity;Ldvy;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    iput-object v1, p0, Ldvw;->b:Ldvt;

    .line 154
    iget-object v1, p0, Ldvw;->a:Ldvu;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1, p0}, Ldvu;->setViewStatusListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;)V

    .line 157
    iget-object v1, p0, Ldvw;->a:Ldvu;

    sget v2, Lctk$g;->one_box_listview:I

    invoke-interface {v1, v2}, Ldvu;->setContentResId(I)V

    .line 158
    iget-object v1, p0, Ldvw;->a:Ldvu;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-interface {v1, v2}, Ldvu;->setDragCloseLimit(I)V

    .line 159
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1}, Ldvu;->getAvatarView()Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "avatar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Ldvw$1;

    invoke-direct {v1, p0}, Ldvw$1;-><init>(Ldvw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    new-instance v1, Ldvr;

    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ldvr;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Ldvw;->t:Ldvr;

    .line 172
    iget-object v1, p0, Ldvw;->t:Ldvr;

    .line 2061
    iput-boolean v3, v1, Ldvr;->b:Z

    .line 2248
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1}, Ldvu;->getContentListView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v1, :cond_1

    .line 2249
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1}, Ldvu;->getContentListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v1, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 2250
    iget-object v1, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .line 2270
    iget-object v2, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v3, Ldvw$4;

    invoke-direct {v3, p0}, Ldvw$4;-><init>(Ldvw;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2252
    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_1

    .line 3259
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1}, Ldvu;->getPullToRefreshView()Landroid/view/View;

    move-result-object v1

    .line 3260
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-nez v2, :cond_3

    .line 176
    :cond_1
    :goto_0
    iget-object v1, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Ldvw;->t:Ldvr;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    invoke-static {}, Ldwg;->a()V

    .line 4188
    new-instance v1, Ldvw$3;

    invoke-direct {v1, p0}, Ldvw$3;-><init>(Ldvw;)V

    iput-object v1, p0, Ldvw;->C:Ldwe;

    .line 181
    .end local v0    # "avatar":Landroid/view/View;
    :cond_2
    return-void

    .line 3261
    .restart local v0    # "avatar":Landroid/view/View;
    :cond_3
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 3262
    iput-object v1, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 3263
    iget-object v1, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Ldvw;I)I
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Ldvw;->r:I

    return p1
.end method

.method static synthetic a(Ldvw;)J
    .locals 2
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-wide v0, p0, Ldvw;->x:J

    return-wide v0
.end method

.method static synthetic a(Ldvw;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    iput-object p1, p0, Ldvw;->m:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Ldvw;Ldvs;)Ldvs;
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # Ldvs;

    .prologue
    .line 90
    iput-object p1, p0, Ldvw;->f:Ldvs;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V
    .locals 3
    .param p1, "miniObject"    # Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 939
    if-eqz p1, :cond_1

    .line 940
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    .line 941
    .local v1, "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a(Ljava/lang/String;)V

    .line 942
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->clickUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 943
    new-instance v0, Ldvw$2;

    invoke-direct {v0, p0, p1}, Ldvw$2;-><init>(Ldvw;Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V

    .line 10394
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 953
    .end local v0    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    iget-object v2, p0, Ldvw;->a:Ldvu;

    invoke-interface {v2, v1}, Ldvu;->setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V

    .line 955
    .end local v1    # "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/models/OneBoxObject;)V
    .locals 7
    .param p1, "oneBoxObject"    # Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    if-eqz p1, :cond_0

    iget v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    if-nez v3, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    packed-switch v3, :pswitch_data_0

    .line 534
    :cond_2
    :goto_1
    :pswitch_0
    iget v3, p0, Ldvw;->z:I

    if-eqz v3, :cond_0

    iget v3, p0, Ldvw;->d:I

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, p0, Ldvw;->a:Ldvu;

    iget v4, p0, Ldvw;->d:I

    iget v5, p0, Ldvw;->z:I

    if-ne v5, v1, :cond_7

    :goto_2
    iget-boolean v2, p0, Ldvw;->v:Z

    invoke-interface {v3, v4, v1, v2}, Ldvu;->a(IZZ)V

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 475
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 476
    .local v0, "firstItem":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    if-eqz v0, :cond_3

    iget v3, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->creatorType:I

    sget v4, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->BUSI_TYPE_ADD:I

    if-ne v3, v4, :cond_3

    .line 477
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ldvw;->y:I

    .line 481
    :goto_3
    new-instance v3, Ldvq;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    iget-object v5, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {v3, v4, v5}, Ldvq;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    iput-object v3, p0, Ldvw;->s:Ldvv;

    .line 482
    iget-object v3, p0, Ldvw;->s:Ldvv;

    iget-wide v4, p0, Ldvw;->x:J

    .line 6205
    iput-wide v4, v3, Ldvv;->c:J

    .line 483
    iget-object v3, p0, Ldvw;->s:Ldvv;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    invoke-virtual {v3, v4}, Ldvv;->a(Ljava/util/List;)V

    .line 484
    iget-object v3, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 486
    invoke-direct {p0}, Ldvw;->k()V

    goto :goto_1

    .line 479
    :cond_3
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Ldvw;->y:I

    goto :goto_3

    .line 488
    .end local v0    # "firstItem":Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;
    :cond_4
    iget-object v3, p0, Ldvw;->t:Ldvr;

    if-eqz v3, :cond_2

    .line 489
    iget-object v3, p0, Ldvw;->t:Ldvr;

    .line 7061
    iput-boolean v2, v3, Ldvr;->b:Z

    .line 490
    iget-object v3, p0, Ldvw;->t:Ldvr;

    invoke-virtual {v3}, Ldvr;->notifyDataSetChanged()V

    goto :goto_1

    .line 495
    :pswitch_2
    invoke-direct {p0}, Ldvw;->m()V

    .line 496
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 497
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Ldvw;->y:I

    .line 498
    new-instance v3, Ldvz;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    iget-object v5, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {v3, v4, v5}, Ldvz;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    iput-object v3, p0, Ldvw;->s:Ldvv;

    .line 499
    iget-object v3, p0, Ldvw;->s:Ldvv;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-virtual {v3, v4}, Ldvv;->a(Ljava/util/List;)V

    .line 500
    iget-object v3, p0, Ldvw;->s:Ldvv;

    iget-wide v4, p0, Ldvw;->x:J

    .line 7205
    iput-wide v4, v3, Ldvv;->c:J

    .line 501
    iget-object v3, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    invoke-direct {p0}, Ldvw;->k()V

    .line 505
    iget-object v3, p0, Ldvw;->a:Ldvu;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    sget v5, Lctk$i;->dt_AT_pull_down_show_detail:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 506
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 505
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    invoke-interface {v3, v4, v5}, Ldvu;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 507
    :cond_5
    iget-object v3, p0, Ldvw;->t:Ldvr;

    if-eqz v3, :cond_2

    .line 508
    iget-object v3, p0, Ldvw;->t:Ldvr;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    .line 509
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_box_work_empty_desc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 508
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8057
    iput-object v4, v3, Ldvr;->a:Ljava/lang/String;

    .line 511
    iget-object v3, p0, Ldvw;->t:Ldvr;

    .line 8061
    iput-boolean v2, v3, Ldvr;->b:Z

    .line 512
    iget-object v3, p0, Ldvw;->t:Ldvr;

    invoke-virtual {v3}, Ldvr;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 516
    :pswitch_3
    invoke-direct {p0}, Ldvw;->m()V

    .line 517
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 518
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Ldvw;->y:I

    .line 519
    new-instance v3, Ldvz;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    iget-object v5, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {v3, v4, v5}, Ldvz;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    iput-object v3, p0, Ldvw;->s:Ldvv;

    .line 520
    iget-object v3, p0, Ldvw;->s:Ldvv;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-virtual {v3, v4}, Ldvv;->a(Ljava/util/List;)V

    .line 521
    iget-object v3, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v4, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    invoke-direct {p0}, Ldvw;->k()V

    goto/16 :goto_1

    .line 524
    :cond_6
    iget-object v3, p0, Ldvw;->t:Ldvr;

    if-eqz v3, :cond_2

    .line 525
    iget-object v3, p0, Ldvw;->t:Ldvr;

    iget-object v4, p0, Ldvw;->j:Landroid/app/Activity;

    .line 526
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->dt_work_agent_empty_tips_for_ov_conv:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Ldvw;->A:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 525
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9057
    iput-object v4, v3, Ldvr;->a:Ljava/lang/String;

    .line 527
    iget-object v3, p0, Ldvw;->t:Ldvr;

    .line 9061
    iput-boolean v2, v3, Ldvr;->b:Z

    .line 528
    iget-object v3, p0, Ldvw;->t:Ldvr;

    invoke-virtual {v3}, Ldvr;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 535
    goto/16 :goto_2

    .line 471
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Ldvw;J)V
    .locals 7
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # J

    .prologue
    const/4 v6, 0x0

    .line 90
    .line 15904
    const-string/jumbo v0, "im"

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeWorkItem, id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15905
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 15906
    :cond_0
    :goto_0
    return-void

    .line 15909
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15910
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15911
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 15912
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 15913
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15915
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 15920
    :cond_3
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    if-gez v0, :cond_4

    .line 15921
    const-string/jumbo v0, "im"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "mOneBoxObject.workCount < 0"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15923
    :cond_4
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    .line 16847
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    if-lez v0, :cond_7

    .line 16848
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16849
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_im_oa_todo_items_without_num:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    invoke-interface {v0, v2, v3}, Ldvu;->a(Ljava/lang/String;I)V

    .line 15925
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15926
    new-instance v0, Ldvr;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ldvr;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ldvw;->t:Ldvr;

    .line 15927
    iget-object v0, p0, Ldvw;->t:Ldvr;

    .line 17061
    iput-boolean v6, v0, Ldvr;->b:Z

    .line 15928
    iget-object v0, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Ldvw;->t:Ldvr;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15933
    :goto_2
    iget v0, p0, Ldvw;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v0, v1, :cond_0

    .line 15934
    invoke-direct {p0}, Ldvw;->j()V

    goto/16 :goto_0

    .line 16851
    :cond_6
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_AT_pull_down_show_detail:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v5, v5, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 16852
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 16851
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    invoke-interface {v0, v2, v3}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 16855
    :cond_7
    iget v0, p0, Ldvw;->z:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 16856
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16857
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_im_oa_todo_items_without_num:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 16859
    :cond_8
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    sget v3, Lctk$i;->dt_im_box_work_empty_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 16861
    :cond_9
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16862
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-direct {p0, v0}, Ldvw;->a(Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V

    goto/16 :goto_1

    .line 15930
    :cond_a
    iget-object v0, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v0, v1}, Ldvv;->a(Ljava/util/List;)V

    .line 15931
    iget-object v0, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v0}, Ldvv;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method static synthetic a(Ldvw;Lcom/alibaba/android/dingtalkim/models/OneBoxObject;)V
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ldvw;->a(Lcom/alibaba/android/dingtalkim/models/OneBoxObject;)V

    return-void
.end method

.method static synthetic a(Ldvw;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide/16 v6, 0x0

    .line 90
    .line 13209
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldvw;->s:Ldvv;

    if-nez v0, :cond_1

    .line 13210
    :cond_0
    return-void

    .line 13212
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsk;

    .line 13213
    if-eqz v0, :cond_2

    .line 13217
    iget-wide v2, p0, Ldvw;->x:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    iget-object v2, v0, Ldsk;->k:Ljava/lang/Long;

    .line 14044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 13217
    iget-wide v4, p0, Ldvw;->x:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ldvw;->b:Ldvt;

    if-eqz v2, :cond_2

    .line 13218
    iget-object v2, p0, Ldvw;->b:Ldvt;

    invoke-interface {v2, v0}, Ldvt;->a(Ldsk;)V

    goto :goto_0
.end method

.method static synthetic b(Ldvw;I)I
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Ldvw;->p:I

    return p1
.end method

.method static synthetic b(Ldvw;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->j:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Ldvw;J)V
    .locals 9
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 90
    .line 17868
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->s:Ldvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-nez v0, :cond_1

    .line 18230
    :cond_0
    :goto_0
    return-void

    .line 17873
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17874
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17875
    new-instance v0, Ldvw$10;

    invoke-direct {v0, p0, p1, p2}, Ldvw$10;-><init>(Ldvw;J)V

    .line 17896
    iget-object v2, p0, Ldvw;->j:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 17897
    const-class v2, Lcma;

    iget-object v3, p0, Ldvw;->j:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 17900
    :cond_2
    invoke-static {}, Ldyi;->a()Ldyi;

    move-result-object v2

    iget-wide v4, p0, Ldvw;->w:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 19044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 18223
    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 18224
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v3, Ldyi$2;

    invoke-direct {v3, v2, v0}, Ldyi$2;-><init>(Ldyi;Lcma;)V

    invoke-virtual {v1, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 18233
    :cond_3
    new-instance v4, Ldyi$3;

    invoke-direct {v4, v2, v0}, Ldyi$3;-><init>(Ldyi;Lcma;)V

    .line 18240
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;

    .line 18241
    invoke-interface {v0, v3, v1, v4}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLOneboxService;->removeWorkItems(Ljava/lang/Long;Ljava/util/List;Liyv;)V

    goto :goto_0
.end method

.method static synthetic b(Ldvw;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 90
    .line 14224
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldvw;->b:Ldvt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0}, Ldvt;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->b:Ldvt;

    .line 14225
    invoke-interface {v0}, Ldvt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldvw;->s:Ldvv;

    if-nez v0, :cond_1

    .line 14226
    :cond_0
    return-void

    .line 14229
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduy;

    .line 14230
    if-eqz v0, :cond_2

    .line 14233
    iget-object v1, p0, Ldvw;->b:Ldvt;

    invoke-interface {v1}, Ldvt;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 14234
    if-eqz v1, :cond_3

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    iget-object v1, v0, Lduy;->a:Ljava/lang/Long;

    .line 15044
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 14234
    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 14235
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->fromModelIDL(Lduy;)Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    move-result-object v0

    .line 14237
    iget-object v1, p0, Ldvw;->b:Ldvt;

    invoke-interface {v1, v0}, Ldvt;->a(Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V

    goto :goto_0
.end method

.method static synthetic c(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->o:I

    return v0
.end method

.method static synthetic c(Ldvw;I)I
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Ldvw;->o:I

    return p1
.end method

.method static synthetic d(Ldvw;I)I
    .locals 0
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Ldvw;->q:I

    return p1
.end method

.method static synthetic d(Ldvw;)Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    return-object v0
.end method

.method private e(I)V
    .locals 4
    .param p1, "oldCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 705
    iget-object v2, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v3, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v2, v3, :cond_0

    .line 706
    iget-object v2, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v2}, Ldvv;->getCount()I

    move-result v0

    .line 707
    .local v0, "newCount":I
    if-gt v0, p1, :cond_1

    .line 714
    .end local v0    # "newCount":I
    :cond_0
    :goto_0
    return-void

    .line 708
    .restart local v0    # "newCount":I
    :cond_1
    sub-int v1, v0, p1

    .line 709
    .local v1, "newPos":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 710
    iget-object v2, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelection(I)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v2, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic e(Ldvw;)V
    .locals 0
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    invoke-direct {p0}, Ldvw;->j()V

    return-void
.end method

.method static synthetic e(Ldvw;I)V
    .locals 4
    .param p0, "x0"    # Ldvw;
    .param p1, "x1"    # I

    .prologue
    const/4 v3, 0x1

    .line 90
    .line 15551
    iget-object v0, p0, Ldvw;->j:Landroid/app/Activity;

    const-string/jumbo v1, "pref_key_box_guide"

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 15552
    if-nez v0, :cond_4

    .line 15553
    iget v0, p0, Ldvw;->z:I

    if-ne v0, v3, :cond_2

    .line 15554
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_guide_business_sub_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldvu;->setGuideName(Ljava/lang/String;)V

    .line 15560
    :cond_0
    :goto_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, v3}, Ldvu;->b(Z)V

    .line 15561
    iget-object v0, p0, Ldvw;->a:Ldvu;

    new-instance v1, Ldvw$5;

    invoke-direct {v1, p0}, Ldvw$5;-><init>(Ldvw;)V

    invoke-interface {v0, v1}, Ldvu;->setGuideListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;)V

    .line 15569
    :cond_1
    :goto_1
    return-void

    .line 15555
    :cond_2
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 15556
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_guide_work_sub_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldvu;->setGuideName(Ljava/lang/String;)V

    goto :goto_0

    .line 15557
    :cond_3
    iget v0, p0, Ldvw;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15558
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_guide_oa_sub_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldvu;->setGuideName(Ljava/lang/String;)V

    goto :goto_0

    .line 15567
    :cond_4
    if-lez p1, :cond_1

    .line 15568
    iget-object v0, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->hidePopup:Z

    if-eqz v0, :cond_5

    .line 15569
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0}, Ldvu;->a()V

    goto :goto_1

    .line 15571
    :cond_5
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    const/high16 v2, 0x43690000    # 233.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ldvu;->a(IZ)V

    goto :goto_1
.end method

.method static synthetic f(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->p:I

    return v0
.end method

.method static synthetic g(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->q:I

    return v0
.end method

.method static synthetic h(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->r:I

    return v0
.end method

.method static synthetic i(Ldvw;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Ldvw;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 314
    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0}, Ldvt;->c()V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 316
    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0}, Ldvt;->b()V

    goto :goto_0

    .line 317
    :cond_2
    iget v0, p0, Ldvw;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Ldvw;->b:Ldvt;

    iget-wide v2, p0, Ldvw;->w:J

    invoke-interface {v0, v2, v3}, Ldvt;->c(J)V

    goto :goto_0
.end method

.method static synthetic k(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->y:I

    return v0
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 541
    iget-boolean v1, p0, Ldvw;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldvw;->l:Z

    .line 544
    iget-object v1, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v1}, Ldvv;->getCount()I

    move-result v0

    .line 545
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic l(Ldvw;)Ldvu;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->a:Ldvu;

    return-object v0
.end method

.method private l()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 583
    iget-object v1, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->visibility:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Ldvw;->a:Ldvu;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Ldvw;)Ldvs;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->f:Ldvs;

    return-object v0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 799
    iget v1, p0, Ldvw;->z:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Ldvw;->z:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 800
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "send_key_box_action_do"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "remove_key_oa_todo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Ldvw;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 804
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic n(Ldvw;)I
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget v0, p0, Ldvw;->d:I

    return v0
.end method

.method private n()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1087
    iget v1, p0, Ldvw;->g:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Ldvw;)Z
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-boolean v0, p0, Ldvw;->v:Z

    return v0
.end method

.method static synthetic p(Ldvw;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Ldvw;

    .prologue
    .line 90
    iget-object v0, p0, Ldvw;->h:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    .prologue
    .line 1041
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1, p2}, Ldvu;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 443
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ldvw;->y:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0}, Ldvt;->b()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 986
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setTitleRightImage(I)V

    goto :goto_0
.end method

.method public final a(ILcom/alibaba/android/dingtalkim/models/BusinessItemObject;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "businessItemObject"    # Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 757
    iget-object v0, p0, Ldvw;->s:Ldvv;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Ldvw;->s:Ldvv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ldvv;->a(ILjava/lang/Object;)V

    .line 760
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 371
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-wide p1, p0, Ldvw;->x:J

    .line 375
    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0, p1, p2}, Ldvt;->a(J)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/wukong/im/Conversation;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    .line 332
    .local v0, "deptName":Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "deptId"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "deptName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deptName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 336
    .restart local v0    # "deptName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 337
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_0

    .line 338
    invoke-static {p3}, Ldjl;->t(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    :cond_3
    iget-object v2, p0, Ldvw;->a:Ldvu;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 341
    :cond_4
    iget-object v2, p0, Ldvw;->a:Ldvu;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1014
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setBackOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1048
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 1
    .param p1, "workItemObject"    # Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .prologue
    .line 764
    iget-object v0, p0, Ldvw;->s:Ldvv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 765
    iget-object v0, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v0, p1}, Ldvv;->b(Ljava/lang/Object;)V

    .line 767
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Z)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    .line 12596
    iput-boolean p2, p0, Ldvw;->c:Z

    .line 12597
    iput-object p1, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    .line 12599
    if-eqz p1, :cond_8

    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    if-eqz v0, :cond_8

    .line 12600
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    iput v0, p0, Ldvw;->z:I

    .line 12602
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->miniProfile:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iput-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    .line 12605
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    if-eqz v0, :cond_0

    .line 12606
    sget-object v0, Ldvw;->i:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldrv;

    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->orgId:J

    iget-wide v4, p0, Ldvw;->x:J

    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Ldrv;->a(JJLjava/lang/String;)V

    .line 12609
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-direct {p0}, Ldvw;->l()Z

    move-result v1

    invoke-interface {v0, v1}, Ldvu;->setShowOneBox(Z)V

    .line 12611
    iget v0, p0, Ldvw;->z:I

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Ldvw;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12612
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->A:Ljava/lang/String;

    iget-object v2, p0, Ldvw;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ldvu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12615
    :cond_1
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    if-eqz v0, :cond_7

    .line 12616
    iget v0, p0, Ldvw;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 12617
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    if-lez v0, :cond_3

    .line 12618
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12619
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_oa_todo_items_without_num:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    invoke-interface {v0, v1, v2}, Ldvu;->a(Ljava/lang/String;I)V

    .line 12635
    :goto_0
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->tags:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 12636
    iput-boolean v8, p0, Ldvw;->v:Z

    .line 12637
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, v7}, Ldvu;->a(I)V

    .line 12638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12639
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduq;

    .line 12640
    new-instance v3, Lckn;

    invoke-direct {v3}, Lckn;-><init>()V

    .line 12641
    iget-object v4, v0, Lduq;->a:Ljava/lang/String;

    iput-object v4, v3, Lckn;->a:Ljava/lang/String;

    .line 12642
    iget-object v0, v0, Lduq;->b:Ljava/lang/Integer;

    .line 13033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 12642
    iput v0, v3, Lckn;->b:I

    .line 12643
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12621
    :cond_2
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_AT_pull_down_show_detail:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 12622
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 12621
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    invoke-interface {v0, v1, v2}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 12625
    :cond_3
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12626
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_oa_todo_items_without_num:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 12628
    :cond_4
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget-object v1, p0, Ldvw;->j:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_im_box_work_empty_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ldvu;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 12632
    :cond_5
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    invoke-direct {p0, v0}, Ldvw;->a(Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;)V

    goto/16 :goto_0

    .line 12645
    :cond_6
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, v1}, Ldvu;->a(Ljava/util/List;)V

    .line 12648
    :cond_7
    invoke-direct {p0}, Ldvw;->n()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12652
    invoke-direct {p0}, Ldvw;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12656
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldvw$7;

    invoke-direct {v1, p0, p2, p1}, Ldvw$7;-><init>(Ldvw;ZLcom/alibaba/android/dingtalkim/models/OneBoxObject;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_8
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "subTitleText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldvu;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    .line 358
    .local v0, "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a(Ljava/lang/String;)V

    .line 4394
    iput-object p2, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 360
    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1, v0}, Ldvu;->setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iput-object p1, p0, Ldvw;->A:Ljava/lang/String;

    .line 456
    iput-object p2, p0, Ldvw;->B:Ljava/lang/String;

    .line 458
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldvw;->a:Ldvu;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1, p2}, Ldvu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 4
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;>;"
    const/4 v2, 0x0

    .line 680
    iput-boolean p2, p0, Ldvw;->c:Z

    .line 681
    iget-object v3, p0, Ldvw;->s:Ldvv;

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v3}, Ldvv;->getCount()I

    move-result v0

    .line 683
    .local v0, "oldCount":I
    iget-object v3, p0, Ldvw;->s:Ldvv;

    instance-of v3, v3, Ldvv;

    if-nez v3, :cond_3

    .line 684
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;-><init>()V

    .line 685
    .local v1, "oneBoxObject":Lcom/alibaba/android/dingtalkim/models/OneBoxObject;
    iget v3, p0, Ldvw;->z:I

    iput v3, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    .line 686
    iput-object p1, v1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    .line 687
    invoke-direct {p0, v1}, Ldvw;->a(Lcom/alibaba/android/dingtalkim/models/OneBoxObject;)V

    .line 692
    .end local v1    # "oneBoxObject":Lcom/alibaba/android/dingtalkim/models/OneBoxObject;
    :goto_0
    invoke-direct {p0, v0}, Ldvw;->e(I)V

    .line 695
    .end local v0    # "oldCount":I
    :cond_0
    iget-object v3, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v3, :cond_1

    .line 696
    iget-object v3, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 699
    :cond_1
    iget-object v3, p0, Ldvw;->m:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Ldvw;->m:Landroid/view/View;

    if-eqz p2, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 702
    :cond_2
    return-void

    .line 689
    .restart local v0    # "oldCount":I
    :cond_3
    iget-object v3, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v3, p1}, Ldvv;->b(Ljava/util/List;)V

    goto :goto_0

    .line 700
    .end local v0    # "oldCount":I
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 771
    .local p1, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldvw$8;

    invoke-direct {v1, p0, p1}, Ldvw$8;-><init>(Ldvw;Ljava/util/Map;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "showPullArrow"    # Z

    .prologue
    .line 402
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->a(Z)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 4
    .param p1, "isOpen"    # Z
    .param p2, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 417
    :cond_0
    if-eqz p1, :cond_3

    .line 418
    iget-object v0, p0, Ldvw;->a:Ldvu;

    iget v1, p0, Ldvw;->d:I

    invoke-interface {v0, v1, v2}, Ldvu;->a(IZ)V

    .line 419
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, v2}, Ldvu;->c(Z)V

    .line 420
    iget-object v0, p0, Ldvw;->j:Landroid/app/Activity;

    iget-object v1, p0, Ldvw;->a:Ldvu;

    invoke-interface {v1}, Ldvu;->getContentListView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 421
    invoke-virtual {p0, v2}, Ldvw;->d(Z)V

    .line 422
    iget-object v0, p0, Ldvw;->f:Ldvs;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Ldvw;->f:Ldvs;

    .line 5185
    iput-boolean v2, v0, Ldvs;->c:Z

    .line 425
    :cond_1
    if-eqz p2, :cond_2

    .line 426
    iget-object v0, p0, Ldvw;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v3}, Ldwa;->a(Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 428
    :cond_2
    invoke-virtual {p0}, Ldvw;->i()V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p0, v3}, Ldvw;->d(Z)V

    .line 431
    iget-object v0, p0, Ldvw;->f:Ldvs;

    if-eqz v0, :cond_4

    .line 432
    iget-object v0, p0, Ldvw;->f:Ldvs;

    .line 6185
    iput-boolean v3, v0, Ldvs;->c:Z

    .line 434
    :cond_4
    if-eqz p2, :cond_5

    .line 435
    iget-object v0, p0, Ldvw;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v2}, Ldwa;->a(Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 437
    :cond_5
    invoke-virtual {p0}, Ldvw;->h()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 807
    iget v0, p0, Ldvw;->z:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ldvw;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    iget-object v0, p0, Ldvw;->j:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Ldvw;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 810
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setBgColor(I)V

    .line 1071
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 394
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-wide p1, p0, Ldvw;->w:J

    .line 398
    iget-object v0, p0, Ldvw;->b:Ldvt;

    invoke-interface {v0, p1, p2}, Ldvt;->b(J)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 958
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setTypingTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 5
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/WorkItemObject;>;"
    const/4 v3, 0x0

    .line 718
    iput-boolean p2, p0, Ldvw;->c:Z

    .line 719
    iget-object v2, p0, Ldvw;->s:Ldvv;

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v2}, Ldvv;->getCount()I

    move-result v0

    .line 721
    .local v0, "oldCount":I
    iget-object v2, p0, Ldvw;->s:Ldvv;

    invoke-virtual {v2, p1}, Ldvv;->b(Ljava/util/List;)V

    .line 723
    invoke-direct {p0, v0}, Ldvw;->e(I)V

    .line 725
    .end local v0    # "oldCount":I
    :cond_0
    iget-object v2, p0, Ldvw;->m:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 726
    iget-object v4, p0, Ldvw;->m:Landroid/view/View;

    if-eqz p2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_1
    iget-object v2, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-eqz v2, :cond_2

    .line 730
    iget-object v2, p0, Ldvw;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 733
    :cond_2
    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 734
    iget-object v2, p0, Ldvw;->D:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    sget-object v3, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v2, v3, :cond_5

    .line 10018
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v1, "workItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/WorkItemObject;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 737
    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 738
    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 739
    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 745
    .end local v1    # "workItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/WorkItemObject;>;"
    :cond_3
    :goto_1
    return-void

    .line 726
    :cond_4
    const/16 v2, 0x8

    goto :goto_0

    .line 742
    :cond_5
    iget-object v2, p0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1007
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Ldvw;->a:Ldvu;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Ldvu;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 813
    iget-object v0, p0, Ldvw;->C:Ldwe;

    if-eqz v0, :cond_0

    .line 814
    invoke-static {}, Ldwf;->a()Ldwf;

    move-result-object v0

    iget-object v1, p0, Ldvw;->C:Ldwe;

    .line 10031
    iget-object v2, v0, Ldwf;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10032
    iget-object v0, v0, Ldwf;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1074
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setBackViewColor(I)V

    .line 1075
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 965
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 1025
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Ldvw;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    :cond_2
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0}, Ldvu;->a()V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 819
    iget-object v0, p0, Ldvw;->C:Ldwe;

    if-eqz v0, :cond_0

    .line 820
    invoke-static {}, Ldwf;->a()Ldwf;

    move-result-object v0

    iget-object v1, p0, Ldvw;->C:Ldwe;

    .line 10037
    iget-object v2, v0, Ldwf;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10038
    iget-object v0, v0, Ldwf;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 822
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1078
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setTitleColor(I)V

    .line 1079
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->setSubTitleColor(I)V

    .line 1080
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1055
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0, p1}, Ldvu;->a(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public d(Z)V
    .locals 5
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    invoke-direct {p0}, Ldvw;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldvw;->f:Ldvs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldvw;->f:Ldvs;

    .line 11189
    iget v2, v2, Ldvs;->b:I

    .line 1092
    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v2, v3, :cond_0

    .line 1093
    iget-object v2, p0, Ldvw;->b:Ldvt;

    invoke-interface {v2}, Ldvt;->d()Ljava/util/Map;

    move-result-object v0

    .line 1094
    .local v0, "floatWins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz v0, :cond_0

    .line 1095
    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 1096
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v1, :cond_0

    .line 1097
    iget-object v2, p0, Ldvw;->a:Ldvu;

    iget-object v3, p0, Ldvw;->j:Landroid/app/Activity;

    sget v4, Lctk$i;->dt_do_live:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldvu;->setStatus(Ljava/lang/String;)V

    .line 1104
    .end local v0    # "floatWins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v2, p0, Ldvw;->a:Ldvu;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Ldvu;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p0}, Ldvw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Ldvw;->a:Ldvu;

    invoke-interface {v0}, Ldvu;->b()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Ldvw;->a:Ldvu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvw;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Ldvw;->u:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->identity:Ljava/lang/String;

    .line 1066
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1119
    iget-object v0, p0, Ldvw;->f:Ldvs;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v2, p0, Ldvw;->f:Ldvs;

    .line 11213
    iget-object v0, v2, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 11214
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 11215
    iget-object v0, v2, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwb;

    .line 11216
    if-eqz v0, :cond_0

    .line 11217
    iget-boolean v4, v2, Ldvs;->c:Z

    invoke-virtual {v0, v4}, Ldwb;->b(Z)V

    .line 11214
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1122
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1125
    iget-object v0, p0, Ldvw;->f:Ldvs;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v2, p0, Ldvw;->f:Ldvs;

    .line 12203
    iget-object v0, v2, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 12204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 12205
    iget-object v0, v2, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwb;

    .line 12206
    if-eqz v0, :cond_0

    .line 12207
    iget-boolean v4, v2, Ldvs;->c:Z

    invoke-virtual {v0, v4}, Ldwb;->a(Z)V

    .line 12204
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1128
    :cond_1
    return-void
.end method
