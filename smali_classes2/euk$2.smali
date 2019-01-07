.class final Leuk$2;
.super Ljava/lang/Object;
.source "ApmtConfRecordAdapter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuk;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leuk;


# direct methods
.method constructor <init>(Leuk;)V
    .locals 0
    .param p1, "this$0"    # Leuk;

    .prologue
    .line 217
    iput-object p1, p0, Leuk$2;->a:Leuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v4, 0xc8

    .line 217
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;

    .line 1220
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leuk;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get video conf(new version) info success "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    if-eqz v0, :cond_5

    .line 1225
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    .line 1226
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 1227
    if-nez v1, :cond_2

    .line 1228
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leuk;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Get videoconf info, status is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1233
    sget v0, Leuj$l;->conf_txt_terminated:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1234
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.teleconf.control.reservation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    const-string/jumbo v1, "conf_type"

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1236
    const-string/jumbo v1, "conf_reservation_action"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    iget-object v1, p0, Leuk$2;->a:Leuk;

    iget-object v1, v1, Leuk;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1241
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1242
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1243
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_caller:conf_calling"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->fromIDL(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;)Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    move-result-object v0

    invoke-static {v0, v1}, Lewb;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1245
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatusDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1247
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatus:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatusDesc:Ljava/lang/String;

    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1250
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->code:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->cause:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
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
    .line 256
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Leuk;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get video conf(new version) info failed "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 257
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method
