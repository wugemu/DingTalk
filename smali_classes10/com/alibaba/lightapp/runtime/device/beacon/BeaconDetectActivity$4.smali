.class final Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;
.super Ljava/lang/Object;
.source "BeaconDetectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 330
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .line 1257
    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .line 2126
    iget-boolean v5, v5, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 1257
    if-eqz v5, :cond_0

    .line 1258
    new-instance v5, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$11;

    invoke-direct {v5, v4}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$11;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v4, v6}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Z)Z

    .line 333
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 334
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 335
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 336
    const-string/jumbo v4, "DingBeacon_("

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 337
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 340
    if-gtz v2, :cond_1

    .line 341
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 335
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 346
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    sget v5, Lhdn$k;->dt_at_beacon_conn_succ_sub_tips:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "tips":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v3    # "tips":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->j(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->j(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    .line 358
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$k;->dt_at_beacon_conn_single_succ:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$k;->dt_at_beacon_conn_complete:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2193
    new-instance v6, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$8;

    invoke-direct {v6, v4, v5}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$8;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .line 2302
    new-instance v5, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$2;

    invoke-direct {v5, v4}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;->b:Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->i(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    return-void

    .line 348
    .restart local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
