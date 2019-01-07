.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcma;)V
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
        "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->c:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->a:Lcma;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->a:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 283
    check-cast p1, Ljava/util/List;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->a:Lcma;

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$7;->b:Ljava/lang/String;

    .line 2176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 1287
    :goto_0
    invoke-interface {v4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 283
    :cond_1
    return-void

    .line 2180
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;

    .line 2182
    if-eqz v0, :cond_3

    .line 2198
    if-nez v0, :cond_4

    move-object v0, v2

    .line 2187
    :goto_2
    if-eqz v0, :cond_3

    .line 2191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2202
    :cond_4
    new-instance v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;-><init>()V

    .line 2203
    iput-object v5, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->accountName:Ljava/lang/String;

    .line 2204
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->name:Ljava/lang/String;

    iput-object v7, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->calendarDisplayName:Ljava/lang/String;

    .line 2205
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->folderAcl:Ljava/lang/String;

    iput-object v7, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->folderAcl:Ljava/lang/String;

    .line 2206
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->serverId:Ljava/lang/String;

    iput-object v7, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->serverId:Ljava/lang/String;

    .line 2207
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->ownerAccount:Ljava/lang/String;

    iput-object v7, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->ownerAccount:Ljava/lang/String;

    .line 2208
    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->isSharedAccount:Z

    iput-boolean v0, v3, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount:Z

    move-object v0, v3

    .line 2210
    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 2194
    goto :goto_0
.end method
