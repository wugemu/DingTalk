.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/ReceiverSelector$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 627
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v0, "disableParticipantUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->s()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 633
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->l(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getProfileUids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->m(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lcom/alibaba/android/ding/widget/ReceiverSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setDisabledUids(Ljava/util/Collection;)V

    .line 637
    .end local v0    # "disableParticipantUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->j()V

    .line 638
    return-void
.end method
