.class final Lri$2;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lri;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

.field final synthetic b:I

.field final synthetic c:Lri;


# direct methods
.method constructor <init>(Lri;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 0
    .param p1, "this$0"    # Lri;

    .prologue
    .line 635
    iput-object p1, p0, Lri$2;->c:Lri;

    iput-object p2, p0, Lri$2;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iput p3, p0, Lri$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 635
    .line 1638
    const-string/jumbo v0, "[MailEventDetailActivity]updateAttendeeStatus success"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lri$2;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget v1, p0, Lri$2;->b:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    .line 1640
    iget-object v0, p0, Lri$2;->c:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    iget-object v1, p0, Lri$2;->a:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-interface {v0, v1}, Lrh$b;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 1641
    iget v0, p0, Lri$2;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1642
    iget-object v0, p0, Lri$2;->c:Lri;

    invoke-static {v0}, Lri;->a(Lri;)Lrh$b;

    move-result-object v0

    invoke-interface {v0}, Lrh$b;->e()V

    .line 635
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 652
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[MailEventDetailActivity]updateAttendeeStatus failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 653
    sget v0, Laxo$i;->dt_mail_event_change_attendee_status_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 654
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 648
    return-void
.end method
