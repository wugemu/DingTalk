.class final Lcom/alibaba/android/ding/widget/VoicePlayView$4;
.super Ljava/lang/Object;
.source "VoicePlayView.java"

# interfaces
.implements Lciu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/VoicePlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/VoicePlayView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 2
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 404
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c()V

    .line 407
    :cond_0
    return-void
.end method

.method public final b(Lciu$a;)V
    .locals 2
    .param p1, "oldInfo"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->e(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->e(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "pause"

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$4;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 416
    :cond_0
    return-void
.end method
