.class final Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;
.super Ljava/lang/Object;
.source "CMailListParticipantsActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;
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
        "Lagx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 192
    const-string/jumbo v0, "CMailListParticipantsActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v0, Laxo$i;->alm_load_failed:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 146
    check-cast p1, Lagx;

    .line 1149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1153
    const/4 v0, 0x0

    .line 1154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    if-eqz p1, :cond_2

    .line 2022
    iget-object v0, p1, Lagx;->a:Ljava/util/Map;

    .line 1159
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1160
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1161
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1164
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2030
    :cond_1
    iget-boolean v0, p1, Lagx;->b:Z

    .line 1172
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1173
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;I)I

    .line 1176
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1177
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;

    move-result-object v2

    .line 2205
    invoke-virtual {v2, v1}, Lada;->b(Ljava/util/List;)V

    .line 1178
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1179
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->c()V

    .line 1187
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    .line 146
    :cond_4
    return-void

    .line 1181
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b()V

    goto :goto_1

    .line 1184
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;

    move-result-object v2

    invoke-virtual {v2, v1}, Lada;->c(Ljava/util/List;)V

    goto :goto_1
.end method
