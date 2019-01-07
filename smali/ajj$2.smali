.class public final Lajj$2;
.super Ljava/lang/Object;
.source "CMailSettingsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lajj$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 140
    iget-object v1, p0, Lajj$2;->a:Landroid/app/Activity;

    .line 1147
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lajj$3;

    invoke-direct {v2}, Lajj$3;-><init>()V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1166
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    .line 1167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 1166
    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2217
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    .line 2218
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2219
    :cond_0
    const-string/jumbo v1, "CMailSettingsUtil"

    const-string/jumbo v2, " refreshFolderSubscribeSettings loginMails.isEmpty "

    invoke-static {v1, v2}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2226
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v2

    invoke-interface {v2, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2227
    new-instance v2, Laba;

    invoke-direct {v2}, Laba;-><init>()V

    .line 2228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Laba;->a:Ljava/util/List;

    .line 2229
    iget-object v3, v2, Laba;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2230
    invoke-static {}, Lro;->a()Lro;

    move-result-object v3

    new-instance v4, Lajj$4;

    invoke-direct {v4, v0}, Lajj$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lro;->a(Laba;Lcma;)V

    goto :goto_0

    .line 2250
    :cond_3
    invoke-static {v0}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lajj$5;

    invoke-direct {v4, v0}, Lajj$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->getFoldersPushSettings(Ljava/util/List;Lxv;)V

    goto :goto_0

    .line 142
    :cond_4
    return-void
.end method
