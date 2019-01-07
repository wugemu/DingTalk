.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;
.super Landroid/os/Handler;
.source "EmotionPackageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 313
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->f(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;I)I

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->f(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;I)I

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->f(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;Z)Z

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    sget v2, Lctk$i;->dt_emotion_immediate_use:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    sget v2, Lctk$i;->dt_emotion_download:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 346
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Ldre;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)Ldre;

    move-result-object v1

    iget-object v1, v1, Ldre;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)V

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
