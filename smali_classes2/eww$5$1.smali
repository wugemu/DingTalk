.class final Leww$5$1;
.super Ljava/lang/Object;
.source "TelePhoneContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leww$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

.field final synthetic b:Leww$5;


# direct methods
.method constructor <init>(Leww$5;Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;)V
    .locals 0
    .param p1, "this$1"    # Leww$5;

    .prologue
    .line 571
    iput-object p1, p0, Leww$5$1;->b:Leww$5;

    iput-object p2, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 574
    iget-object v1, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    .line 575
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Leww$5$1;->b:Leww$5;

    iget-object v1, v1, Leww$5;->b:Leww;

    iget-object v2, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    invoke-static {v1, v2}, Leww;->a(Leww;Ljava/util/List;)V

    .line 578
    iget-object v1, p0, Leww$5$1;->b:Leww$5;

    iget-object v1, v1, Leww$5;->b:Leww;

    iget-object v2, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->version:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->offlineItems:Ljava/util/List;

    invoke-static {v1, v2, v3, v4, v5}, Leww;->a(Leww;JZLjava/util/List;)V

    .line 580
    :cond_0
    iget-object v1, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->onlineItems:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->onlineItems:Ljava/util/List;

    .line 581
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    iget-object v1, p0, Leww$5$1;->b:Leww$5;

    iget-object v1, v1, Leww$5;->b:Leww;

    iget-object v2, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->onlineItems:Ljava/util/List;

    invoke-static {v1, v2}, Leww;->b(Leww;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 583
    .local v0, "addContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    iget-object v1, p0, Leww$5$1;->b:Leww$5;

    iget-object v1, v1, Leww$5;->b:Leww;

    invoke-static {v1, v0}, Leww;->c(Leww;Ljava/util/List;)V

    .line 585
    iget-object v1, p0, Leww$5$1;->b:Leww$5;

    iget-object v1, v1, Leww$5;->b:Leww;

    iget-object v2, p0, Leww$5$1;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;->version:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Leww;->a(Leww;JZLjava/util/List;)V

    .line 588
    .end local v0    # "addContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactItemModel;>;"
    :cond_1
    return-void
.end method
