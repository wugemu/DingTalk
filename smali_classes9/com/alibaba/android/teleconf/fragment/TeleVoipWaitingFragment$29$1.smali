.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->onClick(Landroid/view/View;)V
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
        "Ljava/util/List",
        "<",
        "Leux;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 420
    check-cast p1, Ljava/util/List;

    .line 1423
    new-instance v0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;-><init>(Landroid/content/Context;)V

    .line 2048
    iput-object p1, v0, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->b:Ljava/util/List;

    .line 1425
    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$29$1;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/operation/QuickMessageDialog;->a(Lcom/alibaba/android/teleconf/operation/QuickMessageDialog$a;)V

    .line 420
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 463
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request quick messages failed, errCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 465
    return-void
.end method
