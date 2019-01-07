.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Laha;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

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
    .line 2209
    const-string/jumbo v0, "AbsCMailFragment"

    const/4 v1, 0x0

    const-string/jumbo v2, "check has new mail fail"

    invoke-static {v0, v1, v2, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2210
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2124
    check-cast p1, Ljava/util/Map;

    .line 3127
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3128
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, "checkHasNewMail return for activity is destroy"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->i()Ljava/util/List;

    move-result-object v1

    .line 3133
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3137
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3138
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3140
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3142
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3143
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3148
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_4

    .line 3150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->n(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 3151
    if-eqz p1, :cond_4

    .line 3152
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laha;

    .line 3153
    if-eqz v1, :cond_4

    .line 3154
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    if-eqz v2, :cond_6

    .line 3155
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    .line 4044
    iget-object v0, v1, Laha;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v0

    .line 4183
    iget-boolean v0, v0, Lacl;->a:Z

    .line 3164
    if-nez v0, :cond_7

    .line 3166
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3167
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3169
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laha;

    .line 3171
    if-eqz v0, :cond_5

    .line 5081
    iget-object v2, v0, Laha;->b:Ljava/util/Map;

    iget-object v3, v0, Laha;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5082
    iget-object v0, v0, Laha;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_3

    .line 3157
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    .line 4048
    iget-object v0, v1, Laha;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3178
    :cond_7
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3179
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3181
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3182
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3185
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lacl;->b(Ljava/lang/String;)Z

    move-result v1

    .line 3186
    if-nez v1, :cond_8

    .line 3188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laha;

    .line 3189
    if-eqz v0, :cond_8

    .line 5089
    iget-object v1, v0, Laha;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5090
    iget-object v0, v0, Laha;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_4

    .line 3196
    :cond_9
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v0

    invoke-interface {v0, p1}, Ladq;->a(Ljava/util/Map;)V

    .line 3202
    :goto_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/widget/MailMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/widget/MailMenuView;

    move-result-object v0

    .line 5398
    iput-object p1, v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f:Ljava/util/Map;

    .line 5399
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3199
    :cond_a
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, "checkHasNewMail error, for mCMailMainFragmentListener is null!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
