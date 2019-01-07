.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lied$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lied$b;

.field final synthetic d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;IZLied$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->d:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iput p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->a:I

    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->b:Z

    iput-object p4, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;->c:Lied$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "completed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$4;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1110
    :cond_0
    return-void
.end method
