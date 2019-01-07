.class public final Laro;
.super Ljava/lang/Object;
.source "AliMailFolder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Laro;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;)Laro;
    .locals 2
    .param p0, "calendarObject"    # Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 137
    :cond_0
    new-instance v0, Laro;

    invoke-direct {v0}, Laro;-><init>()V

    .line 138
    .local v0, "aliMailFolder":Laro;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    .line 1031
    iput-object v1, v0, Laro;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 1039
    iput-object v1, v0, Laro;->b:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getCalendarDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1047
    iput-object v1, v0, Laro;->c:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    .line 1055
    iput-object v1, v0, Laro;->d:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 1063
    iput-object v1, v0, Laro;->e:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getFolderAcl()Ljava/lang/String;

    move-result-object v1

    .line 1095
    iput-object v1, v0, Laro;->i:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->isSharedAccount()Z

    move-result v1

    .line 2071
    iput-boolean v1, v0, Laro;->f:Z

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/CalendarObject;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lavj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2087
    iput-object v1, v0, Laro;->h:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Laro;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 14
    check-cast p1, Laro;

    .line 2105
    if-nez p1, :cond_0

    .line 2106
    const/4 v0, 0x1

    .line 2110
    :goto_0
    return v0

    .line 2109
    :cond_0
    iget-object v0, p0, Laro;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    const/4 v0, -0x1

    goto :goto_0

    .line 2113
    :cond_1
    iget-object v0, p0, Laro;->e:Ljava/lang/String;

    .line 3059
    iget-object v1, p1, Laro;->e:Ljava/lang/String;

    .line 2113
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AliMailFolder{mFolderId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laro;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAccountName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShareAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laro;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Laro;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFolderAcl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laro;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
