.class final Lri$1$1;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lri$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/alimei/sdk/model/AttendeeModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lri$1;


# direct methods
.method constructor <init>(Lri$1;)V
    .locals 0
    .param p1, "this$1"    # Lri$1;

    .prologue
    .line 582
    iput-object p1, p0, Lri$1$1;->a:Lri$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lri$1$1;->a:Lri$1;

    iget-object v0, v0, Lri$1;->a:Lri;

    invoke-static {v0, v2}, Lri;->a(Lri;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 592
    iget-object v0, p0, Lri$1$1;->a:Lri$1;

    iget-object v0, v0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    iget-object v1, p0, Lri$1$1;->a:Lri$1;

    iget-object v1, v1, Lri$1;->a:Lri;

    invoke-static {v1}, Lri;->d(Lri;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lrh$b;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)V

    .line 593
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 582
    check-cast p1, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 1585
    iget-object v0, p0, Lri$1$1;->a:Lri$1;

    iget-object v0, v0, Lri$1;->a:Lri;

    invoke-static {v0, p1}, Lri;->a(Lri;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 1586
    iget-object v0, p0, Lri$1$1;->a:Lri$1;

    iget-object v0, v0, Lri$1;->a:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    iget-object v1, p0, Lri$1$1;->a:Lri$1;

    iget-object v1, v1, Lri$1;->a:Lri;

    invoke-static {v1}, Lri;->d(Lri;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v1

    iget-object v2, p0, Lri$1$1;->a:Lri$1;

    iget-object v2, v2, Lri$1;->a:Lri;

    invoke-static {v2}, Lri;->e(Lri;)Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lrh$b;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)V

    .line 582
    return-void
.end method
