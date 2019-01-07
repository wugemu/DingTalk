.class final Lqq$2;
.super Ljava/lang/Object;
.source "FetchMailCalendarTask.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqq;
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
        "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

.field final synthetic b:Lqq;


# direct methods
.method constructor <init>(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$0"    # Lqq;

    .prologue
    .line 151
    iput-object p1, p0, Lqq$2;->b:Lqq;

    iput-object p2, p0, Lqq$2;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 162
    iget-object v0, p0, Lqq$2;->b:Lqq;

    invoke-static {v0, p1}, Lqq;->a(Lqq;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 163
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    move-object v6, p1

    check-cast v6, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 1154
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1155
    iget-object v0, p0, Lqq$2;->b:Lqq;

    invoke-static {v0}, Lqq;->b(Lqq;)J

    move-result-wide v2

    iget-object v0, p0, Lqq$2;->b:Lqq;

    iget-object v4, v0, Lqq;->a:Ljava/lang/String;

    iget-object v5, p0, Lqq$2;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailCalendar(JLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V

    .line 1157
    iget-object v0, p0, Lqq$2;->b:Lqq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqq;->a(Lqq;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 151
    return-void
.end method
