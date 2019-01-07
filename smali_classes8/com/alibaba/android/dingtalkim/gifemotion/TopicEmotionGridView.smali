.class public Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
.super Landroid/widget/FrameLayout;
.source "TopicEmotionGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Ldif;

.field private h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

.field private i:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$2;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->i:Landroid/widget/AbsListView$OnScrollListener;

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->topic_emotion_pager_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1048
    sget v0, Lctk$f;->gv_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a:Landroid/widget/GridView;

    .line 1049
    sget v0, Lctk$f;->tv_gv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1052
    new-instance v0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$1;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V

    .line 1148
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 25
    .line 2109
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->f:Z

    if-nez v0, :cond_1

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    if-nez v0, :cond_0

    .line 2113
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$3;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)V

    .line 2139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2140
    const-class v2, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2142
    :goto_0
    new-instance v1, Ldif;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->c:J

    invoke-direct {v1, v2, v3, v0}, Ldif;-><init>(JLcma;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    .line 2144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->f:Z

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->d:J

    .line 3032
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v8

    iget-wide v2, v0, Ldif;->b:J

    const/16 v6, 0x14

    iget-object v0, v0, Ldif;->d:Lcma;

    .line 3302
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 3303
    new-instance v7, Ldyc$4;

    invoke-direct {v7, v8, v0}, Ldyc$4;-><init>(Ldyc;Lcma;)V

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getTopicEmotions(JJILiyv;)V

    .line 25
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    return-object v0
.end method


# virtual methods
.method public getTopicId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->c:J

    return-wide v0
.end method

.method public setData(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V
    .locals 6
    .param p1, "topicDataObject"    # Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    .line 2025
    iget-boolean v1, v0, Ldif;->a:Z

    if-nez v1, :cond_0

    .line 2028
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldif;->a:Z

    .line 67
    :cond_0
    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->g:Ldif;

    .line 69
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->f:Z

    .line 70
    if-eqz p1, :cond_3

    .line 71
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->e:Z

    .line 72
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->d:J

    .line 73
    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->c:J

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->e:Z

    .line 84
    :cond_2
    :goto_0
    return-void

    .line 79
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->e:Z

    .line 80
    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->d:J

    .line 81
    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->c:J

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->h:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setGifTopicViewStatusListener(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->b:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    .line 92
    return-void
.end method
