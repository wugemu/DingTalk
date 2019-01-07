.class final Lexh$4;
.super Ljava/lang/Object;
.source "ConfApmtDetailPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexh;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexh;


# direct methods
.method constructor <init>(Lexh;)V
    .locals 0
    .param p1, "this$0"    # Lexh;

    .prologue
    .line 222
    iput-object p1, p0, Lexh$4;->a:Lexh;

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
    .line 222
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;

    .line 1232
    if-nez p1, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Refuse the reservation success, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/16 v0, 0xc8

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1237
    iget-object v0, p0, Lexh$4;->a:Lexh;

    invoke-static {v0}, Lexh;->c(Lexh;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lexh$4;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lexg$b;->a(Z)V

    goto :goto_0

    .line 1241
    :cond_2
    iget-object v0, p0, Lexh$4;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 225
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Refuse the reservation failed, code "

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

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lexh$4;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
