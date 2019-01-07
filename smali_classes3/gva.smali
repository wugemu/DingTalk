.class public final Lgva;
.super Ljava/lang/Object;
.source "VideoPlayerUtil.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lgva;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    sput v0, Lgva;->a:I

    .line 66
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lgva;->b:I

    .line 67
    const/high16 v0, 0x43700000    # 240.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lgva;->c:I

    .line 69
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lgva;->d:I

    .line 70
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lgva;->e:I

    .line 72
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lgva;->d:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lgva;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v1

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "tbffmpeg"

    new-instance v2, Lgva$1;

    invoke-direct {v2, p0}, Lgva$1;-><init>(Lcma;)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;III)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-static {p0}, Lgva;->a(Landroid/content/Context;)V

    .line 96
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    if-eqz p1, :cond_0

    .line 102
    if-ne p4, v4, :cond_4

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 104
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-le p3, p2, :cond_3

    .line 105
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lgva;->c:I

    if-eq v3, v5, :cond_2

    .line 106
    sget v3, Lgva;->c:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    sget v3, Lgva;->a:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_1
    move v3, v4

    .line 135
    goto :goto_0

    .line 111
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lgva;->b:I

    if-eq v3, v5, :cond_2

    .line 112
    sget v3, Lgva;->b:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 117
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v3, 0x2

    if-ne p4, v3, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 119
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-le p3, p2, :cond_5

    .line 120
    sget v3, Lgva;->a:I

    int-to-float v3, v3

    sget v5, Lgva;->c:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget v5, Lgva;->d:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 121
    .local v2, "width":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lgva;->d:I

    if-eq v3, v5, :cond_2

    .line 122
    sget v3, Lgva;->d:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 127
    .end local v2    # "width":I
    :cond_5
    sget v3, Lgva;->b:I

    int-to-float v3, v3

    sget v5, Lgva;->a:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget v5, Lgva;->e:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v0, v3

    .line 128
    .local v0, "height":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_2

    .line 129
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    sget v3, Lgva;->e:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vVideo"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p0}, Lgva;->a(Landroid/content/Context;)V

    .line 77
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v3

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoWidth()I

    move-result v2

    .line 81
    .local v2, "videoWidth":I
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoHeight()I

    move-result v1

    .line 82
    .local v1, "videoHeight":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 86
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v4, Lgva;->d:I

    if-eq v3, v4, :cond_2

    .line 87
    sget v3, Lgva;->d:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    sget v3, Lgva;->f:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    invoke-virtual {p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
