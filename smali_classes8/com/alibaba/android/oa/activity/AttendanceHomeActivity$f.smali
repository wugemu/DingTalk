.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    .line 1236
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1237
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->b:I

    .line 1238
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->c:I

    .line 1239
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->d:I

    .line 1240
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 1245
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 1246
    iput v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    .line 1247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->f:F

    .line 1248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->g:F

    .line 1250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->h:F

    .line 1251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->i:F

    .line 1309
    :cond_0
    :goto_0
    return v6

    .line 1252
    :cond_1
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_6

    .line 1253
    :cond_2
    iget v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    if-ne v8, v7, :cond_4

    .line 1254
    const/4 v5, 0x0

    .line 1255
    .local v5, "velocityY":F
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3

    .line 1256
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->d:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1257
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1258
    .local v4, "pointerId":I
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1260
    .end local v4    # "pointerId":I
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->c:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 1261
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v7, v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;F)V

    .line 1266
    .end local v5    # "velocityY":F
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_0

    .line 1267
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 1268
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1263
    .restart local v5    # "velocityY":F
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v7}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->v(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    goto :goto_1

    .line 1270
    .end local v5    # "velocityY":F
    :cond_6
    if-ne v0, v12, :cond_0

    .line 1271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->f:F

    sub-float v1, v8, v9

    .line 1272
    .local v1, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->g:F

    sub-float v2, v8, v9

    .line 1275
    .local v2, "diffY":F
    iget-object v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->w(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_8

    .line 1276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->i:F

    sub-float v3, v8, v9

    .line 1277
    .local v3, "innerDiffY":F
    iget-object v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-gtz v8, :cond_7

    cmpg-float v8, v3, v10

    if-gtz v8, :cond_8

    iget-object v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->x(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-gtz v8, :cond_8

    .line 1278
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->h:F

    .line 1279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->i:F

    goto/16 :goto_0

    .line 1283
    .end local v3    # "innerDiffY":F
    :cond_8
    iget v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    if-nez v8, :cond_a

    .line 1284
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_9

    .line 1285
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->b:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 1286
    iput v12, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    .line 1287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->f:F

    .line 1288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->g:F

    goto/16 :goto_0

    .line 1291
    :cond_9
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->b:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1292
    iput v7, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    .line 1293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->f:F

    .line 1294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->g:F

    move v6, v7

    .line 1295
    goto/16 :goto_0

    .line 1298
    :cond_a
    iget v8, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->e:I

    if-ne v8, v7, :cond_0

    .line 1299
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    if-nez v6, :cond_b

    .line 1300
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    .line 1302
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1303
    iget-object v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v6, v2}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;F)V

    .line 1304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->f:F

    .line 1305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$f;->g:F

    move v6, v7

    .line 1306
    goto/16 :goto_0
.end method
