.class final Lexj$3;
.super Ljava/lang/Object;
.source "VideoApmtOperationPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexj;->a(Leuy;)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexj;


# direct methods
.method constructor <init>(Lexj;)V
    .locals 0
    .param p1, "this$0"    # Lexj;

    .prologue
    .line 133
    iput-object p1, p0, Lexj$3;->a:Lexj;

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
    .line 133
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;

    .line 1136
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->code:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cancel video apmt"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 1142
    const/4 v0, 0x1

    .line 1150
    :goto_1
    iget-object v1, p0, Lexj$3;->a:Lexj;

    iget-object v1, v1, Lexj;->a:Lexf$b;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lexj$3;->a:Lexj;

    iget-object v1, v1, Lexj;->a:Lexf$b;

    invoke-interface {v1, v0}, Lexf$b;->c(Z)V

    goto :goto_0

    .line 1144
    :cond_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cancel video apmt failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->cause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lexj$3;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_3

    .line 1146
    iget-object v0, p0, Lexj$3;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->code:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;->cause:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 157
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lexj;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Cancel video apmt failed: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 158
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lexj$3;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lexj$3;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    invoke-interface {v0, p1, p2}, Lexf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lexj$3;->a:Lexj;

    iget-object v0, v0, Lexj;->a:Lexf$b;

    invoke-interface {v0, v5}, Lexf$b;->c(Z)V

    .line 163
    :cond_0
    return-void
.end method
