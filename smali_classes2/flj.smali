.class public final Lflj;
.super Ljava/lang/Object;
.source "ManagerOrgCustomizePresenter.java"

# interfaces
.implements Lfli$a;


# instance fields
.field final a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/app/Activity;

.field f:Lfli$b;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfli$b;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lfli$b;
    .param p3, "orgId"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lflj;->e:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lflj;->f:Lfli$b;

    .line 56
    iget-object v2, p0, Lflj;->f:Lfli$b;

    invoke-interface {v2, p0}, Lfli$b;->setPresenter(Lcjd;)V

    .line 57
    iput-wide p3, p0, Lflj;->a:J

    .line 58
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    iget-wide v4, p0, Lflj;->a:J

    invoke-virtual {v2, v4, v5}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1063
    .local v0, "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v2, :cond_2

    .line 1064
    :cond_0
    iput-object v3, p0, Lflj;->d:Ljava/lang/String;

    .line 1065
    iput-object v3, p0, Lflj;->b:Ljava/lang/String;

    .line 1066
    iput-boolean v1, p0, Lflj;->g:Z

    .line 1076
    :cond_1
    iput-object v3, p0, Lflj;->c:Ljava/lang/String;

    .line 1074
    :goto_0
    return-void

    .line 1070
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    iput-object v2, p0, Lflj;->d:Ljava/lang/String;

    .line 1071
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iput-object v2, p0, Lflj;->b:Ljava/lang/String;

    .line 1072
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lflj;->g:Z

    .line 1073
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->title:Ljava/lang/String;

    iput-object v1, p0, Lflj;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lflj;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 6
    .param p0, "x0"    # Lflj;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "x2"    # J

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 1349
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1357
    :goto_0
    return-object v0

    .line 1353
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1354
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 43
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "linkText"    # Ljava/lang/String;
    .param p4, "linkUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 204
    if-nez p2, :cond_0

    .line 205
    const-string/jumbo p2, ""

    .line 207
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    return-object v7

    .line 210
    :cond_1
    const-string/jumbo v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v9

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "result":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .local v7, "spannableString":Landroid/text/SpannableString;
    move-object v4, p2

    .line 213
    .local v4, "finalText":Ljava/lang/String;
    new-instance v0, Lflj$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lflj$3;-><init>(Lflj;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v0, "clickableSpanServe":Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
    invoke-virtual {v6, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 230
    .local v8, "start":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v7, v0, v8, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lflj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 108
    iget-object v3, p0, Lflj;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    iget-object v3, p0, Lflj;->f:Lfli$b;

    invoke-interface {v3}, Lfli$b;->b()V

    .line 112
    new-instance v1, Lcfi;

    invoke-direct {v1}, Lcfi;-><init>()V

    .line 113
    .local v1, "model":Lcfi;
    iget-wide v4, p0, Lflj;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcfi;->a:Ljava/lang/Long;

    .line 114
    new-instance v2, Lcfk;

    invoke-direct {v2}, Lcfk;-><init>()V

    .line 115
    .local v2, "oaModel":Lcfk;
    iput-object p2, v2, Lcfk;->b:Ljava/lang/String;

    .line 116
    iput-object v2, v1, Lcfi;->e:Lcfk;

    .line 118
    new-instance v0, Lflj$1;

    invoke-direct {v0, p0, p2}, Lflj$1;-><init>(Lflj;Ljava/lang/String;)V

    .line 161
    .local v0, "apiEventListener":Lcma;
    iget-object v3, p0, Lflj;->e:Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 162
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    iget-object v5, p0, Lflj;->e:Landroid/app/Activity;

    invoke-interface {v3, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;
    check-cast v0, Lcma;

    .line 165
    .restart local v0    # "apiEventListener":Lcma;
    :cond_2
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lezt;->a(Lcfi;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lflj;->f:Lfli$b;

    invoke-interface {v0}, Lfli$b;->b()V

    .line 175
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v1, Lflj$2;

    invoke-direct {v1, p0, p1}, Lflj$2;-><init>(Lflj;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lify;->a(Ljava/lang/String;Lifw;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 248
    sget v1, Lezg$l;->_server_config_work_space_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "serverWorkTitle":Ljava/lang/String;
    iget-boolean v1, p0, Lflj;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lflj;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lflj;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    const/4 v1, 0x1

    .line 252
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lflj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lflj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lflj;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lflj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lflj;->g:Z

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lflj;->e:Landroid/app/Activity;

    .line 375
    iput-object v0, p0, Lflj;->f:Lfli$b;

    .line 376
    return-void
.end method
