.class final Lexm$33;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->a(ZZ)V
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
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 425
    iput-object p1, p0, Lexm$33;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;

    .line 1428
    if-nez p1, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Accept conf success"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;->confCameraStatus:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1433
    if-ne v0, v3, :cond_2

    .line 1435
    iget-object v0, p0, Lexm$33;->a:Lexm;

    invoke-virtual {v0, v2}, Lexm;->e(Z)V

    .line 1438
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;->confMicStatus:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1440
    if-ne v0, v3, :cond_0

    .line 1441
    iget-object v0, p0, Lexm$33;->a:Lexm;

    invoke-static {v0}, Lexm;->c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lexm$33;->a:Lexm;

    invoke-static {v0}, Lexm;->c(Lexm;)Lcom/alivc/live/conf/AlivcVideoConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/live/conf/AlivcVideoConf;->closeMic()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 450
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Accept conf fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method
