.class final Lri$1;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lri;


# direct methods
.method constructor <init>(Lri;)V
    .locals 0
    .param p1, "this$0"    # Lri;

    .prologue
    .line 568
    iput-object p1, p0, Lri$1;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 568
    check-cast p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .line 1571
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    invoke-interface {v0}, Lrh$b;->H_()V

    .line 1572
    if-nez p1, :cond_0

    .line 1573
    const-string/jumbo v0, "[MailEventDetailActivity]loadEventDetail: eventDetailObject is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    invoke-interface {v0}, Lrh$b;->e()V

    .line 1575
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0, p1}, Lri;->a(Lri;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .line 1579
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->b(Lri;)V

    .line 1580
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->c(Lri;)Z

    .line 1582
    iget-object v1, p0, Lri$1;->a:Lri;

    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->d(Lri;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    new-instance v0, Lri$1$1;

    invoke-direct {v0, p0}, Lri$1$1;-><init>(Lri$1;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lri$1;->a:Lri;

    .line 1598
    invoke-static {v4}, Lri;->a(Lri;)Lrh$b;

    move-result-object v4

    invoke-interface {v4}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v4

    .line 1582
    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, v0}, Lri;->a(Lri;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 607
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailEventDetailActivity]loadEventDetail failed:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    invoke-interface {v0}, Lrh$b;->H_()V

    .line 609
    iget-object v0, p0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    invoke-interface {v0}, Lrh$b;->e()V

    .line 610
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 603
    return-void
.end method
