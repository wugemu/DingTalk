.class final Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;
.super Ljava/lang/Object;
.source "ConfCallTranslationAnimView.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a()Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setAnimationType(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->e(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->a()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Z)Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Z)Z

    .line 147
    return-void
.end method
