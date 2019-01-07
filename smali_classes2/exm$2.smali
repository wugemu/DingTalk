.class final Lexm$2;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->d(Z)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lexm;


# direct methods
.method constructor <init>(Lexm;Z)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 729
    iput-object p1, p0, Lexm$2;->b:Lexm;

    iput-boolean p2, p0, Lexm$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 729
    .line 1733
    iget-boolean v0, p0, Lexm$2;->a:Z

    if-eqz v0, :cond_1

    .line 1734
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 1738
    :goto_0
    iget-object v1, p0, Lexm$2;->b:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1739
    iget-object v1, p0, Lexm$2;->b:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    iget-boolean v2, p0, Lexm$2;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    .line 729
    :cond_0
    return-void

    .line 1736
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 745
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Unmuteall voip conf member fail "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v1, -0x1

    .line 747
    .local v1, "errCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 750
    :cond_0
    iget-object v2, p0, Lexm$2;->b:Lexm;

    invoke-static {v2}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 752
    iget-boolean v2, p0, Lexm$2;->a:Z

    if-eqz v2, :cond_2

    .line 753
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 757
    .local v0, "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :goto_0
    iget-object v2, p0, Lexm$2;->b:Lexm;

    invoke-static {v2}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 759
    .end local v0    # "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    :cond_1
    return-void

    .line 755
    :cond_2
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .restart local v0    # "action":Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    goto :goto_0
.end method
