.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(F)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;II)I

    move-result v7

    .line 1086
    .local v7, "index":I
    if-ltz v7, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1088
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1089
    .local v0, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)I

    move-result v1

    add-int v3, v1, v7

    .line 1091
    .local v3, "adapterIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    .line 1092
    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1091
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1094
    .local v6, "handled":Z
    if-eqz v6, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->performHapticFeedback(I)Z

    .line 1100
    .end local v0    # "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    .end local v6    # "handled":Z
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1043
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Ljava/lang/Boolean;)V

    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    sget-object v1, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1048
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget v1, v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d:I

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;I)V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 1053
    :cond_0
    return v3
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    .line 1059
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1061
    .local v0, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;II)I

    move-result v6

    .line 1064
    .local v6, "index":I
    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1066
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->e(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)I

    move-result v1

    add-int v3, v1, v6

    .line 1068
    .local v3, "adapterIndex":I
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->b:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1070
    const/4 v1, 0x1

    .line 1078
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    :goto_0
    return v1

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->d(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->f(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$a;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1078
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
