.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Leux;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 2385
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iput p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->a:I

    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2385
    check-cast p1, Leux;

    .line 3388
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->a:I

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V

    .line 2385
    return-void

    .line 4014
    :cond_0
    iget-object v0, p1, Leux;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iget v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$17;->a:I

    const-string/jumbo v2, ""

    invoke-static {v0, v1, p2, v2}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ILjava/lang/String;Ljava/lang/String;)V

    .line 2394
    return-void
.end method
