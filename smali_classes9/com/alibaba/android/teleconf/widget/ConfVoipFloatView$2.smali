.class final Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;
.super Ljava/lang/Object;
.source "ConfVoipFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Clk control view"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;->a:Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method
