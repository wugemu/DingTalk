.class final Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;
.super Ljava/lang/Object;
.source "VoicePlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/VoicePlayView$1;->onProgressListener(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/ding/widget/VoicePlayView$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/VoicePlayView$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->c:Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    iput p2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->a:I

    iput p3, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->c:Lcom/alibaba/android/ding/widget/VoicePlayView$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b(Lcom/alibaba/android/ding/widget/VoicePlayView;I)V

    .line 142
    return-void
.end method
