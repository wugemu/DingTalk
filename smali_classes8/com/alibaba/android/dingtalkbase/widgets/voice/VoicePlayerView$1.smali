.class final Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;
.super Ljava/lang/Object;
.source "VoicePlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;I)I

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->c(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->voice_thumb_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    .line 1192
    iget v0, v0, Lctj;->c:I

    .line 217
    if-ne v0, v3, :cond_0

    .line 218
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->b:Z

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->b()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->b:Z

    goto :goto_0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->g(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    mul-double/2addr v0, v4

    double-to-int v3, v0

    .line 231
    .local v3, "position":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->b:Z

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V

    .line 241
    .end local v3    # "position":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;Z)Z

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->d(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->voice_thumb_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void

    .line 235
    .restart local v3    # "position":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V

    goto :goto_0
.end method
