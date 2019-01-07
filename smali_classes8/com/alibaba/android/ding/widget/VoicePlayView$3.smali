.class final Lcom/alibaba/android/ding/widget/VoicePlayView$3;
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
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$3;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$3;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->e(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->performClick()Z

    .line 389
    return-void
.end method
