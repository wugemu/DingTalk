.class public final Lftz$1;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lftz;


# direct methods
.method public constructor <init>(Lftz;)V
    .locals 0
    .param p1, "this$0"    # Lftz;

    .prologue
    .line 54
    iput-object p1, p0, Lftz$1;->a:Lftz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .line 1057
    iget-object v0, p0, Lftz$1;->a:Lftz;

    .line 2032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 1057
    invoke-interface {v0, p1}, Lfty$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 54
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lftz$1;->a:Lftz;

    .line 1032
    iget-object v1, v1, Lftz;->a:Lfty$a;

    .line 66
    invoke-interface {v1, p1, p2}, Lfty$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "[NameCardExchangePresenter]createF2FGroup onException: "

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 70
    const-string/jumbo v1, "ExchangePresenter"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 62
    return-void
.end method
