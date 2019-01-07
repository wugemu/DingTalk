.class final Ldjb$1;
.super Ljava/lang/Object;
.source "ChatVoiceController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjb;


# direct methods
.method constructor <init>(Ldjb;)V
    .locals 0
    .param p1, "this$0"    # Ldjb;

    .prologue
    .line 142
    iput-object p1, p0, Ldjb$1;->a:Ldjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 150
    :pswitch_1
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    iget-object v4, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v4}, Ldjb;->a(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setRecordListener(Lcom/alibaba/android/dingtalkim/views/VoiceRecordView$a;)V

    .line 151
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_voice_button_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getBgColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->c(Ldjb;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 155
    .local v1, "rad":I
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x2

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x3

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x4

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x6

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x7

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 157
    .local v2, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 158
    .local v0, "bg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v4}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getBgColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->d(Ldjb;)Landroid/widget/Button;

    move-result-object v3

    invoke-static {v3, v0}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 163
    .end local v0    # "bg":Landroid/graphics/drawable/ShapeDrawable;
    .end local v1    # "rad":I
    .end local v2    # "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    :goto_1
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a(Z)V

    .line 164
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_voice_button_longclick"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->c(Ldjb;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x3c

    invoke-static {v3, v4, v5}, Lcms;->a(Landroid/content/Context;J)V

    .line 168
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->e(Ldjb;)V

    .line 169
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->f(Ldjb;)Ldvw;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->f(Ldjb;)Ldvw;

    move-result-object v3

    .line 2021
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ldvw;->c(Z)V

    .line 173
    :cond_1
    :pswitch_2
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 2537
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x43160000    # 150.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 2538
    iget-boolean v6, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->e:Z

    if-nez v6, :cond_0

    .line 2541
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 2542
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->l:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v6, v7}, Lcpz;->a(IF)I

    move-result v6

    .line 2543
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    .line 2544
    new-instance v8, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x1

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x2

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x3

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x4

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x5

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x6

    int-to-float v11, v7

    aput v11, v9, v10

    const/4 v10, 0x7

    int-to-float v7, v7

    aput v7, v9, v10

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v7, v10}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 2546
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2547
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2548
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    invoke-static {v6, v7}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2553
    :goto_2
    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 2555
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2556
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 2557
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2558
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2559
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->h:Landroid/widget/TextView;

    sget v5, Lctk$i;->message_voice_release_cancle:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2560
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v5, Lctk$i;->message_voice_cancel:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 2561
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 2562
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    sget v4, Lctk$e;->voice_recording_tip_cancel:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 161
    :cond_2
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->d(Ldjb;)Landroid/widget/Button;

    move-result-object v3

    sget v4, Lctk$e;->white_btn_pressed:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2550
    :cond_3
    iget-object v6, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v7, Lctk$e;->white_btn_pressed:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 2565
    :cond_4
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2566
    iget-object v5, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;

    iget-boolean v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/waveform/WaveformView;->setVisibility(I)V

    .line 2567
    iget-object v5, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->g:Landroid/widget/TextView;

    iget-boolean v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->i:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2568
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->f:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2569
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->h:Landroid/widget/TextView;

    sget v5, Lctk$i;->message_voice_slide_cancle:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2570
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->d:Landroid/widget/Button;

    sget v5, Lctk$i;->message_voice_release_send:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 2571
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->j:Z

    .line 2572
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->c:Landroid/widget/LinearLayout;

    sget v4, Lctk$e;->voice_recording_tip:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2566
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 2567
    :cond_6
    const/16 v3, 0x8

    goto :goto_4

    .line 176
    :pswitch_3
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a(F)V

    goto/16 :goto_0

    .line 181
    :pswitch_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_im_chat_cancel_as_up_enable"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a(F)V

    goto/16 :goto_0

    .line 185
    :cond_7
    iget-object v3, p0, Ldjb$1;->a:Ldjb;

    invoke-static {v3}, Ldjb;->b(Ldjb;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a()V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
