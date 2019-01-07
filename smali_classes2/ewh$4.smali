.class public final Lewh$4;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;

.field final synthetic b:Lewh$a;

.field final synthetic c:Levg;

.field final synthetic d:Lewh;


# direct methods
.method public constructor <init>(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;Lewh$a;Levg;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 602
    iput-object p1, p0, Lewh$4;->d:Lewh;

    iput-object p2, p0, Lewh$4;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;

    iput-object p3, p0, Lewh$4;->b:Lewh$a;

    iput-object p4, p0, Lewh$4;->c:Levg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 602
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;

    .line 1605
    if-nez p1, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->enable:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1609
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ad enable true"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    if-eq v0, v1, :cond_10

    .line 1612
    :try_start_0
    new-instance v1, Levg;

    invoke-direct {v1}, Levg;-><init>()V

    .line 1613
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdTypeEnum;->valueOf()I

    move-result v0

    iput v0, v1, Levg;->k:I

    .line 1616
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1617
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Levg;->a:I

    .line 1619
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->version:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1620
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Levg;->b:I

    .line 1622
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1623
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->title:Ljava/lang/String;

    iput-object v0, v1, Levg;->c:Ljava/lang/String;

    .line 1625
    :cond_5
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->titleRender:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->titleRender:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1626
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->titleRender:Ljava/util/Map;

    const-string/jumbo v2, "color"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1628
    invoke-static {v0}, Leyq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Levg;->d:I

    .line 1631
    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1632
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->content:Ljava/lang/String;

    iput-object v0, v1, Levg;->f:Ljava/lang/String;

    .line 1634
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->contentRender:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->contentRender:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1635
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->contentRender:Ljava/util/Map;

    const-string/jumbo v2, "color"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1637
    invoke-static {v0}, Leyq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Levg;->g:I

    .line 1641
    :cond_8
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1642
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->mediaId:Ljava/lang/String;

    iput-object v0, v1, Levg;->h:Ljava/lang/String;

    .line 1644
    :cond_9
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->arrowMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1645
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->arrowMediaId:Ljava/lang/String;

    iput-object v0, v1, Levg;->i:Ljava/lang/String;

    .line 1647
    :cond_a
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1648
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Leyq;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Levg;->j:I

    .line 1650
    :cond_b
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1651
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->uri:Ljava/lang/String;

    iput-object v0, v1, Levg;->e:Ljava/lang/String;

    .line 1653
    :cond_c
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->backMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1654
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;->backMediaId:Ljava/lang/String;

    iput-object v0, v1, Levg;->l:Ljava/lang/String;

    .line 1657
    :cond_d
    iget-object v0, p0, Lewh$4;->d:Lewh;

    invoke-static {v0, v1}, Lewh;->a(Lewh;Levg;)V

    .line 1658
    iget v0, v1, Levg;->b:I

    iget-object v2, p0, Lewh$4;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->version:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_e

    .line 1660
    const/4 v0, 0x1

    invoke-static {v0}, Lewh;->a(Z)V

    .line 1661
    iget-object v0, p0, Lewh$4;->d:Lewh;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lewh;->k(Lewh;Z)V

    .line 1663
    :cond_e
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    invoke-interface {v0, v1}, Lewh$a;->a(Levg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1670
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1673
    :cond_f
    iget-object v0, p0, Lewh$4;->d:Lewh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewh;->k(Lewh;Z)V

    .line 1674
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ad enable false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_ad_item_show_content"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1678
    :cond_10
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    iget-object v1, p0, Lewh$4;->c:Levg;

    invoke-interface {v0, v1}, Lewh$a;->a(Levg;)V

    goto/16 :goto_0
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
    .line 685
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ad req "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lewh$4;->b:Lewh$a;

    iget-object v1, p0, Lewh$4;->c:Levg;

    invoke-interface {v0, v1}, Lewh$a;->a(Levg;)V

    .line 690
    :cond_0
    return-void
.end method
