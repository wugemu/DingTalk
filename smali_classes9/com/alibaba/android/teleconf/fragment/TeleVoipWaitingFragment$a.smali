.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;
.super Liei$a;
.source "TeleVoipWaitingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V
    .locals 1
    .param p1, "frg"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 622
    invoke-direct {p0}, Liei$a;-><init>()V

    .line 623
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 624
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "focusChanged"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 628
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 629
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    :cond_0
    return-void
.end method
