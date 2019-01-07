.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iput p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->a:I

    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2255
    :goto_0
    return-void

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->a:I

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$16;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/Runnable;)V

    goto :goto_0
.end method
