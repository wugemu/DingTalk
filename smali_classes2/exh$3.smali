.class final Lexh$3;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;",
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
    .line 161
    iput-object p1, p0, Lexh$3;->a:Lexh;

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
    .line 161
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;

    .line 1172
    if-nez p1, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Accept the reservation success, code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/16 v0, 0xc8

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1177
    iget-object v0, p0, Lexh$3;->a:Lexh;

    invoke-static {v0}, Lexh;->c(Lexh;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lexh$3;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lexg$b;->a(Z)V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lexh$3;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 164
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexh;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Accept the reservation failed, code "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 165
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lexh$3;->a:Lexh;

    invoke-static {v0}, Lexh;->b(Lexh;)Lexg$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lexg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
