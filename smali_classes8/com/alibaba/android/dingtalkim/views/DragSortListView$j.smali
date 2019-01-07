.class Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:F

.field protected b:J

.field c:Z

.field final synthetic d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;FI)V
    .locals 4
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 928
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput p2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    .line 930
    int-to-float v0, p3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->a:F

    .line 931
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->i:F

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->f:F

    .line 932
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->g:F

    .line 933
    iget v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->h:F

    .line 934
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 959
    return-void
.end method

.method public a(F)V
    .locals 0
    .param p1, "smoothFrac"    # F

    .prologue
    .line 963
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->b:J

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->c:Z

    .line 949
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->a()V

    .line 950
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 951
    return-void
.end method

.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 971
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->c:Z

    if-eqz v1, :cond_0

    .line 985
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->b:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->a:F

    div-float v0, v1, v2

    .line 978
    .local v0, "fraction":F
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1

    .line 979
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->a(F)V

    .line 980
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->b()V

    goto :goto_0

    .line 1937
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 1938
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->f:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    .line 982
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->a(F)V

    .line 983
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1939
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->e:F

    sub-float v1, v6, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 1940
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->g:F

    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->h:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_1

    .line 1942
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$j;->i:F

    sub-float v2, v0, v6

    mul-float/2addr v1, v2

    sub-float v2, v0, v6

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    goto :goto_1
.end method
