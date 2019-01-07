.class final Lewq$1$2;
.super Ljava/lang/Object;
.source "TeleConfVideoHelper.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewq$1;->run()V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewq$1;


# direct methods
.method constructor <init>(Lewq$1;)V
    .locals 0
    .param p1, "this$1"    # Lewq$1;

    .prologue
    .line 133
    iput-object p1, p0, Lewq$1$2;->a:Lewq$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 133
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;

    .line 1136
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1142
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1144
    :goto_0
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewq;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Pull run-video conf fail "

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 1145
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :goto_1
    return-void

    .line 1148
    :cond_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewq;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Pull run-video conf."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;->videoConfs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .line 1150
    if-eqz v0, :cond_3

    .line 1151
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1152
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_callee"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    move-result-object v0

    invoke-static {v0, v1}, Lewb;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1155
    :cond_3
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewq;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid info model"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

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
    .line 161
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewq;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Pull run-video conf fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 162
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method
