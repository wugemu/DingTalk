.class final Laco$1;
.super Ljava/lang/Object;
.source "MailAliasManager.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laco;->a(ZLcma;)Lxv;
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
        "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Z

.field final synthetic c:Laco;


# direct methods
.method constructor <init>(Laco;Lcma;Z)V
    .locals 0
    .param p1, "this$0"    # Laco;

    .prologue
    .line 76
    iput-object p1, p0, Laco$1;->c:Laco;

    iput-object p2, p0, Laco$1;->a:Lcma;

    iput-boolean p3, p0, Laco$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 129
    iget-boolean v0, p0, Laco$1;->b:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Laco$1;->c:Laco;

    iget-object v1, p0, Laco$1;->a:Lcma;

    invoke-static {v0, v1}, Laco;->a(Laco;Lcma;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string/jumbo v0, "MailAliasManager"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 133
    iget-object v0, p0, Laco$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Laco$1;->a:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 76
    check-cast p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;

    .line 1080
    if-nez p1, :cond_1

    .line 1081
    iget-object v0, p0, Laco$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Laco$1;->a:Lcma;

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->aliases:Ljava/util/List;

    .line 1097
    iget-object v1, p0, Laco$1;->c:Laco;

    invoke-static {v1}, Laco;->a(Laco;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1098
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    iget-object v1, p0, Laco$1;->c:Laco;

    invoke-static {v1}, Laco;->a(Laco;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1102
    :cond_2
    const/4 v1, 0x0

    .line 1103
    iget-object v0, p1, Lcom/alibaba/alimei/contact/model/UserSelfContactModel;->extend:Ljava/util/List;

    .line 1105
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    .line 1107
    if-nez v0, :cond_3

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1120
    :goto_2
    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Laco$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Laco$1;->a:Lcma;

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1117
    :cond_5
    iget-object v0, p0, Laco$1;->c:Laco;

    iget-object v1, p0, Laco$1;->c:Laco;

    invoke-static {v1}, Laco;->b(Laco;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Laco$1;->a:Lcma;

    invoke-static {v0, v1, v2, v3}, Laco;->a(Laco;Ljava/lang/String;Ljava/lang/String;Lcma;)Z

    move-result v0

    goto :goto_2
.end method
