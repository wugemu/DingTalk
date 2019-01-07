.class final Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;
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
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a()Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->h(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2$1;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method
