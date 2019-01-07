.class final Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;
.super Ljava/lang/Object;
.source "MailCalendarInterfaceImpl.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 6
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v4, p2, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    if-eqz v4, :cond_0

    move-object v3, p2

    .line 101
    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    .line 102
    .local v3, "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    .end local v3    # "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v3    # "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getAddedFolders()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getChangedFolders()Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getDeletedFolders()Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-static {v4, v0}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-static {v4, v1}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-static {v4, v2}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->a(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl$6;->a:Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;->c(Lcom/alibaba/alimei/calendar/MailCalendarInterfaceImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
