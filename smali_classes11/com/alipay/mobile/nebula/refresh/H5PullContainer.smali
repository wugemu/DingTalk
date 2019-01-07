.class public Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
.super Landroid/widget/FrameLayout;
.source "H5PullContainer.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;
    }
.end annotation


# static fields
.field public static final DEFALUT_DURATION:I = 0x258

.field private static final MIN_REFRESH_TIME:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "H5PullContainer"


# instance fields
.field private contentView:Landroid/view/View;

.field private flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

.field private handleM57OverScroll:Z

.field protected headerHeight:I

.field private headerView:Landroid/view/View;

.field private lastY:I

.field private offsets:I

.field private overScrolled:Z

.field private pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

.field private startLoadingTime:J

.field protected state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 29
    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 29
    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    sget v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 29
    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->performFitContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->moveOffset(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    return p1
.end method

.method private canPull()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->canPull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canRefresh()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->canRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fitExtras()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-ne v1, v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 232
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    sub-int v0, v1, v2

    .line 234
    .local v0, "offset":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 237
    .end local v0    # "offset":I
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onLoading()V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    goto :goto_0
.end method

.method private static getScrollY(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 97
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->canPull()Z

    move-result v9

    if-nez v9, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v8

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 102
    .local v0, "action":I
    iget-object v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    .line 103
    .local v2, "contentTop":I
    if-eq v0, v7, :cond_2

    const/4 v9, 0x3

    if-ne v0, v9, :cond_4

    :cond_2
    move v1, v7

    .line 105
    .local v1, "actionUp":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 106
    iput-boolean v8, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    .line 109
    :cond_3
    if-lez v2, :cond_8

    if-eqz v1, :cond_8

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 111
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v9, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    if-ne v7, v9, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitExtras()V

    goto :goto_0

    .end local v1    # "actionUp":Z
    :cond_4
    move v1, v8

    .line 103
    goto :goto_1

    .line 113
    .restart local v1    # "actionUp":Z
    :cond_5
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v9, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-ne v7, v9, :cond_6

    .line 114
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    if-le v2, v7, :cond_0

    .line 115
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    sub-int v5, v2, v7

    .line 116
    .local v5, "offset":I
    iget-object v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    goto :goto_0

    .line 118
    .end local v5    # "offset":I
    :cond_6
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v9, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    if-eq v7, v9, :cond_7

    .line 121
    iget-object v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    goto :goto_0

    .line 124
    :cond_7
    iget-object v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    goto :goto_0

    .line 129
    :cond_8
    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->lastY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    .line 132
    .restart local v5    # "offset":I
    iget-object v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getScrollY(Landroid/view/View;)I

    move-result v6

    .line 133
    .local v6, "scrollY":I
    div-int/lit8 v5, v5, 0x2

    .line 134
    iget-boolean v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    if-eqz v9, :cond_c

    if-gtz v6, :cond_c

    move v4, v7

    .line 137
    .local v4, "needHandle":Z
    :goto_2
    iget-boolean v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    if-eqz v9, :cond_9

    .line 138
    iget v9, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    if-nez v9, :cond_9

    .line 139
    if-lez v5, :cond_d

    :goto_3
    and-int/2addr v4, v7

    .line 143
    :cond_9
    if-eqz v4, :cond_b

    .line 145
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    .line 146
    iget v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->offsets:I

    const/16 v8, 0x12c

    if-le v7, v8, :cond_a

    .line 147
    div-int/lit8 v5, v5, 0x2

    .line 149
    :cond_a
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->moveOffset(I)Z

    .line 150
    const/4 v3, 0x1

    .line 152
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->lastY:I

    move v8, v3

    .line 153
    goto/16 :goto_0

    .end local v4    # "needHandle":Z
    :cond_c
    move v4, v8

    .line 134
    goto :goto_2

    .restart local v4    # "needHandle":Z
    :cond_d
    move v7, v8

    .line 139
    goto :goto_3
.end method

.method private hasHeader()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isUCM57()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 62
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 63
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v2, "NO"

    const-string/jumbo v3, "h5_handleM57OverScroll"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleM57OverScroll:Z

    .line 67
    .end local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    return-void

    .line 64
    .restart local v0    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveOffset(I)Z
    .locals 4
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 215
    :goto_0
    return v2

    .line 181
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v3, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-eq v2, v3, :cond_1

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int v0, v2, p1

    .line 183
    .local v0, "nextTop":I
    if-gtz v0, :cond_3

    .line 184
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int p1, v2

    .line 208
    .end local v0    # "nextTop":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 210
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->invalidate()V

    .line 215
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    .restart local v0    # "nextTop":I
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    if-gt v0, v2, :cond_7

    .line 186
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v3, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v3, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    if-ne v2, v3, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    .line 187
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v2, :cond_5

    .line 189
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onOpen()V

    .line 191
    :cond_5
    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    iput v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v2, :cond_1

    .line 194
    int-to-float v2, v0

    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 195
    .local v1, "progress":F
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onProgressUpdate(I)V

    goto :goto_1

    .line 197
    .end local v1    # "progress":F
    :cond_7
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    if-le v0, v2, :cond_1

    .line 198
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v3, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    if-ne v2, v3, :cond_1

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v2, :cond_8

    .line 200
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onOver()V

    .line 202
    :cond_8
    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    iput v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    goto :goto_1
.end method

.method private performFitContent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 278
    .local v0, "offset":I
    if-lez v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->flinger:Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 281
    :cond_0
    sget v1, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    .line 283
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->onRefreshFinish()V

    .line 286
    :cond_1
    return-void
.end method

.method private updateHeader()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "content view not added yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    .line 342
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 351
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    .line 348
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableUsePullHeader()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 289
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 290
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v2, "NO"

    const-string/jumbo v3, "h5_enableLottiePullHeader"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fitContent()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    iget v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->state:I

    sget v2, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    if-eq v1, v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->enableUsePullHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startLoadingTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    rsub-int v0, v1, 0x7d0

    .line 265
    .local v0, "delay":I
    new-instance v1, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;-><init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 273
    .end local v0    # "delay":I
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->performFitContent()V

    goto :goto_0
.end method

.method public isBackToTop()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 298
    .local v0, "offset":I
    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyViewChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->updateHeader()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->canRefresh()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "contentTop":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 165
    invoke-virtual {v2, v4, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 169
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    sub-int v1, v0, v2

    .line 170
    .local v1, "headerTop":I
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v1, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 174
    :cond_1
    return-void
.end method

.method public onOverScrolled(IIII)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getScrollY(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_0

    if-gez p2, :cond_0

    if-gtz p4, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->overScrolled:Z

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->addView(Landroid/view/View;I)V

    .line 246
    return-void
.end method

.method public setPullAdapter(Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->removeView(Landroid/view/View;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->headerView:Landroid/view/View;

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->pullAdapter:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .line 309
    return-void
.end method

.method public setPullableView(Lcom/alipay/mobile/nebula/refresh/H5PullableView;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/refresh/H5PullableView;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1, p0}, Lcom/alipay/mobile/nebula/refresh/H5PullableView;->setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V

    .line 252
    :cond_0
    return-void
.end method
