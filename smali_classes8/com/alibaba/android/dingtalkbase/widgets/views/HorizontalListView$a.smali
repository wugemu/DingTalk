.class final Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;II)I

    move-result v1

    .line 1131
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    .line 1133
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)I

    move-result v2

    add-int v0, v2, v1

    .line 1135
    .local v0, "adapterIndex":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$d;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    .line 1137
    const/4 v2, 0x1

    .line 1141
    .end local v0    # "adapterIndex":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Landroid/view/MotionEvent;)Z

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
    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(F)Z

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
    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 1108
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;II)I

    move-result v7

    .line 1109
    .local v7, "index":I
    if-ltz v7, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1111
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1112
    .local v0, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v7

    .line 1114
    .local v3, "adapterIndex":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 1115
    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1114
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1117
    .local v6, "handled":Z
    if-eqz v6, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->performHapticFeedback(I)Z

    .line 1123
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

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Ljava/lang/Boolean;)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e:I

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;I)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 1076
    return v3
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V

    .line 1082
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1084
    .local v0, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;II)I

    move-result v6

    .line 1087
    .local v6, "index":I
    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1089
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v6

    .line 1091
    .local v3, "adapterIndex":I
    if-eqz v0, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1093
    const/4 v1, 0x1

    .line 1101
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    :goto_0
    return v1

    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
