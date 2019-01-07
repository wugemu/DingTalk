.class public final Lewh$5;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewh;


# direct methods
.method public constructor <init>(Lewh;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 780
    iput-object p1, p0, Lewh$5;->a:Lewh;

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
    const/4 v3, 0x0

    .line 780
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;

    .line 1783
    if-nez p1, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1786
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->enable:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1787
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Group h5 page enable true"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->type:Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageTypeEnum;->TYPE_NOT_UPDATE:Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageTypeEnum;

    if-eq v0, v1, :cond_3

    .line 1789
    new-instance v0, Levj;

    invoke-direct {v0}, Levj;-><init>()V

    .line 1790
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1791
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2044
    iput v1, v0, Levj;->a:I

    .line 1793
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->uri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1794
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;->uri:Ljava/lang/String;

    .line 3036
    iput-object v1, v0, Levj;->b:Ljava/lang/String;

    .line 1796
    :cond_2
    invoke-static {v0}, Lewh;->a(Levj;)V

    .line 1797
    const/4 v0, 0x1

    invoke-static {v0}, Lewh;->b(Z)V

    .line 1799
    iget-object v0, p0, Lewh$5;->a:Lewh;

    invoke-static {v0}, Lewh;->h(Lewh;)V

    goto :goto_0

    .line 1801
    :cond_3
    invoke-static {v3}, Lewh;->b(Z)V

    goto :goto_0

    .line 1805
    :cond_4
    invoke-static {v3}, Lewh;->b(Z)V

    .line 1806
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Group h5 page false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "conf_group_create_page_show_flag"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

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
    .line 814
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Group h5 page req "

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

    .line 815
    const/4 v0, 0x0

    invoke-static {v0}, Lewh;->b(Z)V

    .line 816
    return-void
.end method
