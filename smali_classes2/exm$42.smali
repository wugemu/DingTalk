.class final Lexm$42;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->a(Ljava/util/List;Z)V
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
.field final synthetic a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field final synthetic b:I

.field final synthetic c:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;I)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 634
    iput-object p1, p0, Lexm$42;->c:Lexm;

    iput-object p2, p0, Lexm$42;->a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iput p3, p0, Lexm$42;->b:I

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
    .line 634
    .line 1637
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "add member success "

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lexm$42;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lexm$42;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    iget-object v1, p0, Lexm$42;->a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget v2, p0, Lexm$42;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    .line 634
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 645
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add member failed, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, -0x1

    .line 647
    .local v0, "errCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 650
    :cond_0
    iget-object v1, p0, Lexm$42;->c:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lexm$42;->c:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    iget-object v2, p0, Lexm$42;->a:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-interface {v1, v2, v0, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V

    .line 653
    :cond_1
    return-void
.end method
