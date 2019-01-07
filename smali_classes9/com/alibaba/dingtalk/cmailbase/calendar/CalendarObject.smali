.class public Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;
.super Ljava/lang/Object;
.source "CalendarObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountName:Ljava/lang/String;

.field public calendarDisplayName:Ljava/lang/String;

.field public folderAcl:Ljava/lang/String;

.field public isSharedAccount:Z

.field public ownerAccount:Ljava/lang/String;

.field public serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->calendarDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->accountName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->ownerAccount:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->serverId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderAcl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->folderAcl:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isMainAccount()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedAccount()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->accountName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCalendarDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "calendarDisplayName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->calendarDisplayName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFolderAcl(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderAcl"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->folderAcl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOwnerAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerAccount"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->ownerAccount:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->serverId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSharedAccount(Z)V
    .locals 0
    .param p1, "sharedAccount"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount:Z

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CalendarObject{accountName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", calendarDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->calendarDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->ownerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", folderAcl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->folderAcl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSharedAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
