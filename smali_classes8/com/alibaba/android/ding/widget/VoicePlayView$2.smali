.class final Lcom/alibaba/android/ding/widget/VoicePlayView$2;
.super Ljava/lang/Object;
.source "VoicePlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 373
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$2;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 376
    const-string/jumbo v0, "play"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$2;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->d(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lbla;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$2;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 1061
    iget-object v2, v0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lbla;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    iget-object v2, v0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a()V

    .line 1064
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b()V

    .line 1065
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbla;->b:Ljava/lang/String;

    .line 1067
    iput-object v1, v0, Lbla;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$2;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c()V

    goto :goto_0
.end method
