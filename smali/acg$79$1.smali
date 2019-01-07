.class final Lacg$79$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$79;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$79;


# direct methods
.method constructor <init>(Lacg$79;)V
    .locals 0
    .param p1, "this$0"    # Lacg$79;

    .prologue
    .line 5111
    iput-object p1, p0, Lacg$79$1;->a:Lacg$79;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 5111
    check-cast p1, Ljava/util/List;

    .line 6114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6115
    :cond_0
    const-string/jumbo v0, "navToChooseParticipant:getUserProfiles"

    const-string/jumbo v1, "userProfiles empty"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6116
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    if-eqz v0, :cond_1

    .line 6117
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6119
    :cond_1
    :goto_0
    return-void

    .line 6123
    :cond_2
    new-instance v2, Lfp;

    invoke-direct {v2}, Lfp;-><init>()V

    .line 6125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6128
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3

    .line 6129
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 7096
    invoke-virtual {v2, v6, v7, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6129
    check-cast v1, Ljava/lang/Boolean;

    .line 8022
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 6129
    if-nez v1, :cond_3

    .line 6133
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v6, v7, v1}, Lfp;->b(JLjava/lang/Object;)V

    .line 6134
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6138
    :cond_4
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v1, v1, Lacg$79;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/selected.html"

    .line 6139
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lacg$79$1$1;

    invoke-direct {v4, p0, v3}, Lacg$79$1$1;-><init>(Lacg$79$1;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 6149
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    if-eqz v0, :cond_1

    .line 6150
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    invoke-interface {v0, v10}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5160
    const-string/jumbo v0, "navToChooseParticipant:getUserProfiles"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    if-eqz v0, :cond_0

    .line 5162
    iget-object v0, p0, Lacg$79$1;->a:Lacg$79;

    iget-object v0, v0, Lacg$79;->b:Lcma;

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5164
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 5156
    return-void
.end method
