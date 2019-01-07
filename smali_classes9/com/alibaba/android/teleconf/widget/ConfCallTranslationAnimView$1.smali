.class final Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;
.super Ljava/lang/Object;
.source "ConfCallTranslationAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a()Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    :cond_0
    return-void
.end method
