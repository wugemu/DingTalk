.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(IIZLjava/util/List;Ljava/util/List;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Ljava/util/List;

.field final synthetic f:I

.field final synthetic g:Lcma;

.field final synthetic h:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;IIZLjava/util/List;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->h:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->a:Ljava/util/List;

    iput p3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->b:I

    iput p4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->c:I

    iput-boolean p5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->d:Z

    iput-object p6, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->e:Ljava/util/List;

    iput p7, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->f:I

    iput-object p8, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->g:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 8
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->h:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->b:I

    iget v2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->c:I

    iget-boolean v3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->d:Z

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->e:Ljava/util/List;

    iget v6, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->f:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->g:Lcma;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Ljava/util/List;ILcma;)V

    .line 401
    const-string/jumbo v0, "[queryAllLocalEvents]failed, reason:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 402
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 388
    check-cast p1, Ljava/util/List;

    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->h:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iget v1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->b:I

    iget v2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->c:I

    iget-boolean v3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->d:Z

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->e:Ljava/util/List;

    iget v6, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->f:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$10;->g:Lcma;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;IIZLjava/util/List;Ljava/util/List;ILcma;)V

    .line 1395
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[queryAllLocalEvents]success, result size:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 388
    return-void

    .line 1395
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
