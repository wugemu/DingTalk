.class public Lcom/taobao/taolive/sdk/ui/component/FavorFrame;
.super Lcom/taobao/taolive/sdk/component/BaseFrame;
.source "FavorFrame.java"


# static fields
.field private static final MAX_COUNT:I = 0xa

.field private static final TIME_DELAY_FAVOR_SEND:J = 0x1770L


# instance fields
.field private mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

.field private mIsMeDoFavor:Z

.field private mLastBizCount:J

.field private mMineFavorCount:I

.field private mNeedSendFavor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/component/BaseFrame;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mNeedSendFavor:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;J)J
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    .prologue
    .line 17
    iget v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mMineFavorCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mMineFavorCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mNeedSendFavor:Z

    return p1
.end method


# virtual methods
.method public addFavor(J)V
    .locals 7
    .param p1, "bizCount"    # J

    .prologue
    const/4 v6, 0x1

    .line 59
    iget-wide v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(IZ)V

    .line 69
    :goto_0
    iget-wide v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 70
    iput-wide p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    .line 72
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-wide v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    sub-long v0, p1, v2

    .line 63
    .local v0, "count":J
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    long-to-int v3, v0

    invoke-virtual {v2, v3, v6}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(IZ)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v6}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(IZ)V

    goto :goto_0
.end method

.method public initBizCount(J)V
    .locals 1
    .param p1, "bizCount"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    .line 114
    return-void
.end method

.method public isMeDoFavor()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mIsMeDoFavor:Z

    return v0
.end method

.method public onCreateView(Landroid/view/ViewStub;)V
    .locals 1
    .param p1, "viewStub"    # Landroid/view/ViewStub;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    sget v0, Lbtp$f;->taolive_frame_favor:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    .line 40
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mContainer:Landroid/view/View;

    .line 42
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->reset()V

    .line 48
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mLastBizCount:J

    .line 52
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->clearFavor()V

    .line 56
    :cond_0
    return-void
.end method

.method public sendFavor(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "isFastMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mIsMeDoFavor:Z

    .line 76
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    invoke-virtual {v0, p2, v1}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->addFavor(ZZ)V

    .line 77
    iget v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mMineFavorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mMineFavorCount:I

    .line 79
    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mNeedSendFavor:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mNeedSendFavor:Z

    .line 81
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->mFavorView:Lcom/taobao/taolive/sdk/ui/view/FavorLayout;

    new-instance v1, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;-><init>(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;Ljava/lang/String;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_0
    return-void
.end method
