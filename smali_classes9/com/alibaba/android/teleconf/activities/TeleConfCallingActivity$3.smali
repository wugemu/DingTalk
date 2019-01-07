.class final Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;
.super Ljava/lang/Object;
.source "TeleConfCallingActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Ljava/util/List;)V
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 266
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    .line 1279
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    const/4 v1, 0x0

    .line 1283
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1284
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1285
    if-eqz v0, :cond_2

    .line 1289
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    if-eq v3, v0, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    .line 1290
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 1291
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_3

    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 1292
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 1293
    :cond_3
    const/4 v0, 0x1

    .line 1297
    :goto_1
    if-eqz v0, :cond_9

    .line 1298
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 1299
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1300
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1301
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1302
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    :cond_5
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Net is 3g"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1308
    :cond_6
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Start video call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V

    .line 1315
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V

    goto/16 :goto_0

    .line 1311
    :cond_8
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_CONF_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1312
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Start conf call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V

    goto :goto_2

    .line 1317
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .line 1318
    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .line 1319
    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-static {v0, v1, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V

    goto/16 :goto_0

    .line 1323
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1324
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->preventList:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->cause:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 269
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get call type fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lewb;->b(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V

    .line 275
    return-void
.end method
