.class final Lexm$37;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

.field final synthetic b:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2813
    iput-object p1, p0, Lexm$37;->b:Lexm;

    iput-object p2, p0, Lexm$37;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2813
    check-cast p1, Ljava/lang/Integer;

    .line 3816
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3817
    iget-object v0, p0, Lexm$37;->b:Lexm;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lexm;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 3819
    iget-object v1, p0, Lexm$37;->b:Lexm;

    invoke-static {v1}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3820
    iget-object v0, p0, Lexm$37;->b:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lexm$37;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    .line 2813
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2833
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2828
    return-void
.end method
