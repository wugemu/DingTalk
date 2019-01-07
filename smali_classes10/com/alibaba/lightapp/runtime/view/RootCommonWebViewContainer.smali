.class public Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;
.super Landroid/widget/RelativeLayout;
.source "RootCommonWebViewContainer.java"


# instance fields
.field private a:Lhdz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    .line 1052
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->a:Lhdz;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->a:Lhdz;

    .line 1163
    if-eqz p1, :cond_0

    iget-object v3, v2, Lhdz;->c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 1052
    :goto_0
    if-eqz v2, :cond_4

    .line 1053
    :goto_1
    return v0

    .line 1168
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    move v2, v1

    .line 1207
    goto :goto_0

    .line 1170
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lhdz;->f:I

    .line 1171
    iget v3, v2, Lhdz;->f:I

    iput v3, v2, Lhdz;->g:I

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lhdz;->i:J

    goto :goto_2

    .line 1175
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1176
    iget v4, v2, Lhdz;->f:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    .line 1177
    iget v5, v2, Lhdz;->g:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    .line 1178
    iget v6, v2, Lhdz;->f:I

    iget-object v7, v2, Lhdz;->b:Landroid/app/Activity;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    if-le v6, v7, :cond_2

    iget v6, v2, Lhdz;->f:I

    iget-object v7, v2, Lhdz;->b:Landroid/app/Activity;

    const/high16 v8, 0x42700000    # 60.0f

    .line 1179
    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1180
    iget-object v6, v2, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, v2, Lhdz;->b:Landroid/app/Activity;

    .line 1181
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1183
    float-to-int v3, v3

    iput v3, v2, Lhdz;->g:I

    move v2, v0

    .line 1184
    goto :goto_0

    .line 1187
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lhdz;->i:J

    sub-long/2addr v4, v6

    .line 1188
    const-wide/16 v6, 0x5dc

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 1189
    iget-object v3, v2, Lhdz;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lhdz;->a(Landroid/view/View;)V

    move v2, v0

    .line 1190
    goto :goto_0

    .line 1197
    :pswitch_2
    iput-wide v4, v2, Lhdz;->i:J

    .line 1198
    iget-object v3, v2, Lhdz;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lhdz;->b(Landroid/view/View;)V

    goto :goto_2

    .line 1201
    :pswitch_3
    iput-wide v4, v2, Lhdz;->i:J

    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 43
    goto/16 :goto_1

    .line 1168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    .line 2060
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->a:Lhdz;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->a:Lhdz;

    .line 2211
    if-eqz p1, :cond_0

    iget-object v3, v2, Lhdz;->c:Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 2060
    :goto_0
    if-eqz v2, :cond_3

    .line 2061
    :goto_1
    return v0

    .line 2215
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    move v2, v1

    .line 2257
    goto :goto_0

    .line 2217
    :pswitch_0
    iput-boolean v1, v2, Lhdz;->h:Z

    .line 2218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lhdz;->f:I

    .line 2219
    iget v3, v2, Lhdz;->f:I

    iput v3, v2, Lhdz;->g:I

    goto :goto_2

    .line 2223
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2224
    iget v4, v2, Lhdz;->f:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    .line 2225
    iget v5, v2, Lhdz;->g:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    .line 2227
    iget v6, v2, Lhdz;->f:I

    iget-object v7, v2, Lhdz;->b:Landroid/app/Activity;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    if-le v6, v7, :cond_2

    iget v6, v2, Lhdz;->f:I

    iget-object v7, v2, Lhdz;->b:Landroid/app/Activity;

    const/high16 v8, 0x42700000    # 60.0f

    .line 2228
    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2231
    iget-object v6, v2, Lhdz;->b:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget-object v5, v2, Lhdz;->b:Landroid/app/Activity;

    .line 2232
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 2234
    iput-boolean v0, v2, Lhdz;->h:Z

    .line 2235
    float-to-int v3, v3

    iput v3, v2, Lhdz;->g:I

    move v2, v0

    .line 2237
    goto :goto_0

    .line 2245
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2246
    iget-boolean v4, v2, Lhdz;->h:Z

    if-eqz v4, :cond_2

    iget v4, v2, Lhdz;->f:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Lhdz;->e:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 2315
    iget-object v3, v2, Lhdz;->b:Landroid/app/Activity;

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v5, v4, v1

    new-instance v5, Lhdz$12;

    invoke-direct {v5, v2}, Lhdz$12;-><init>(Lhdz;)V

    invoke-static {v3, v0, v4, v5}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    move v2, v0

    .line 2248
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 48
    goto/16 :goto_1

    .line 2215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setFloatingLayerDelegate(Lhdz;)V
    .locals 0
    .param p1, "floatingLayerDelegate"    # Lhdz;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RootCommonWebViewContainer;->a:Lhdz;

    .line 39
    return-void
.end method
