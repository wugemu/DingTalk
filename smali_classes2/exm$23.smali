.class final Lexm$23;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->onPublish(Lcom/alivc/live/conf/AlivcVideoConf;[Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V
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
.field final synthetic a:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

.field final synthetic b:J

.field final synthetic c:Lexm;


# direct methods
.method constructor <init>(Lexm;Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;J)V
    .locals 1
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 1814
    iput-object p1, p0, Lexm$23;->c:Lexm;

    iput-object p2, p0, Lexm$23;->a:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    iput-wide p3, p0, Lexm$23;->b:J

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
    .line 1814
    check-cast p1, Ljava/lang/Integer;

    .line 2817
    if-eqz p1, :cond_1

    iget-object v0, p0, Lexm$23;->c:Lexm;

    .line 2818
    invoke-static {v0}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2819
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2820
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lexm$23;->c:Lexm;

    invoke-static {v1}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2821
    iget-object v0, p0, Lexm$23;->c:Lexm;

    invoke-static {v0}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2822
    if-eqz v0, :cond_0

    .line 2823
    iget-object v1, p0, Lexm$23;->a:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V

    .line 2826
    :cond_0
    iget-object v0, p0, Lexm$23;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2827
    iget-object v0, p0, Lexm$23;->c:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v4, p0, Lexm$23;->b:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    .line 1814
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1839
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Add cache fail "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1835
    return-void
.end method
