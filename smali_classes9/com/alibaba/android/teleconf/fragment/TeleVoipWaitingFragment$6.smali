.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 1248
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->c:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    iput p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->a:I

    iput-object p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;->b:Ljava/lang/String;

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
    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$6;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1265
    :cond_0
    return-void
.end method
