.class final Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;
.super Ljava/lang/Object;
.source "EncryptVoicePlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

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
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;Z)Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;I)I

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->c(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
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

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->d(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->voice_thumb_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;

    move-result-object v0

    .line 1192
    iget v0, v0, Lctj;->c:I

    .line 216
    if-ne v0, v3, :cond_0

    .line 217
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->b:Z

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->b()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->b:Z

    goto :goto_0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->g(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    mul-double/2addr v0, v6

    double-to-int v3, v0

    .line 230
    .local v3, "position":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->e(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->b:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J

    move-result-wide v6

    long-to-int v4, v6

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V

    .line 240
    .end local v3    # "position":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;Z)Z

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->d(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->voice_thumb_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-void

    .line 234
    .restart local v3    # "position":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->j(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->j(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    goto :goto_0
.end method
