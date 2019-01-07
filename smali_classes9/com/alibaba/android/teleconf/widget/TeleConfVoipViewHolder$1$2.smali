.class final Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1$2;
.super Ljava/lang/Object;
.source "TeleConfVoipViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->a(Lezd;ZLandroid/view/View;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    iput-boolean v3, v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->h:Z

    .line 247
    return-void
.end method
