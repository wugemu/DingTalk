.class final Lacg$6;
.super Lcmi;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lacg$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$6;->b:Lcma;

    iput-boolean p3, p0, Lacg$6;->c:Z

    iput-object p4, p0, Lacg$6;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1176
    const-string/jumbo v0, "bindEmail, mailIService.bind:"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1177
    const-string/jumbo v0, "bindEmail, onException:"

    iget-object v1, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lacg$6;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 1181
    iget-object v0, p0, Lacg$6;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lacg$6;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 1131
    .line 2134
    const-string/jumbo v0, "MailNavigator"

    iget-object v1, p0, Lacg$6;->a:Ljava/lang/String;

    const-string/jumbo v2, "bindEmail success"

    invoke-static {v0, v1, v2}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2138
    iget-object v0, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lacg;->a(Ljava/lang/String;)V

    .line 2139
    iget-object v0, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2140
    invoke-static {}, Lacr;->a()Lacr;

    iget-object v0, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lacr;->a(Ljava/lang/String;)V

    .line 2142
    :cond_0
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lacs;->a(Z)V

    .line 2143
    iget-object v0, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->startSyncFolder(Z)V

    .line 2144
    const-string/jumbo v0, "mailIService.bind after login:"

    iget-object v1, p0, Lacg$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lacg$6;->b:Lcma;

    if-eqz v0, :cond_1

    .line 2146
    iget-object v0, p0, Lacg$6;->b:Lcma;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2156
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lacg$6;->c:Z

    if-nez v0, :cond_2

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 2157
    iget-object v1, p0, Lacg$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lacg$6;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    new-instance v3, Lacg$6$1;

    invoke-direct {v3, p0}, Lacg$6$1;-><init>(Lacg$6;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->updateDisplayName(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 1131
    :cond_2
    return-void

    .line 2900
    :cond_3
    const-string/jumbo v0, "JustForStatisticActivity"

    const-string/jumbo v1, "mail_bind_but_nologin_db_error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2150
    const-string/jumbo v0, "bindEmail:"

    const-string/jumbo v1, "mail bind but not login in db"

    invoke-static {v0, v1}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lacg$6;->b:Lcma;

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p0, Lacg$6;->b:Lcma;

    const-string/jumbo v1, "2019"

    const-string/jumbo v2, "DATABASE error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
