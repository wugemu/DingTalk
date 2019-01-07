.class public abstract Lexb;
.super Ljava/lang/Object;
.source "BaseApmtConfRecordPresenter.java"

# interfaces
.implements Lexa$a;


# instance fields
.field protected final a:Lexa$b;

.field protected b:Landroid/app/Activity;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z


# direct methods
.method public constructor <init>(Lexa$b;)V
    .locals 2
    .param p1, "view"    # Lexa$b;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lexb;->h:Z

    .line 31
    iput-boolean v1, p0, Lexb;->i:Z

    .line 32
    iput-boolean v1, p0, Lexb;->j:Z

    .line 33
    iput-boolean v1, p0, Lexb;->k:Z

    .line 35
    iput-boolean v0, p0, Lexb;->l:Z

    .line 36
    iput-boolean v0, p0, Lexb;->m:Z

    .line 37
    iput-boolean v0, p0, Lexb;->n:Z

    .line 38
    iput-boolean v0, p0, Lexb;->o:Z

    .line 41
    iput-object p1, p0, Lexb;->a:Lexa$b;

    .line 42
    iget-object v0, p0, Lexb;->a:Lexa$b;

    invoke-interface {v0, p0}, Lexa$b;->setPresenter(Lcjd;)V

    .line 43
    iget-object v0, p0, Lexb;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lexb;->b:Landroid/app/Activity;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lexb;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lexb;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lexb;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lexb;->n:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lexb;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->H_()V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 0
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 151
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isRefresh"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 51
    iget-object v0, p0, Lexb;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->e()V

    .line 52
    iget-object v0, p0, Lexb;->a:Lexa$b;

    invoke-interface {v0}, Lexa$b;->H_()V

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Lexb;->b(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lexb;->c(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lexb;->d(Z)V

    .line 58
    invoke-virtual {p0, v1}, Lexb;->e(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    iget-boolean v4, p0, Lexb;->l:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lexb;->m:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lexb;->o:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lexb;->n:Z

    if-eqz v4, :cond_4

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "isHasRunningRecords":Z
    iget-object v4, p0, Lexb;->d:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lexb;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    const/4 v3, 0x1

    .line 75
    :cond_0
    const/4 v2, 0x0

    .line 76
    .local v2, "isHasOrderRecords":Z
    iget-object v4, p0, Lexb;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lexb;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    const/4 v2, 0x1

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "isHasEndedRecords":Z
    iget-object v4, p0, Lexb;->g:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lexb;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    const/4 v1, 0x1

    .line 83
    :cond_2
    const/4 v0, 0x0

    .line 84
    .local v0, "isHasCancelRecords":Z
    iget-object v4, p0, Lexb;->f:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lexb;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_3
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 88
    iget-object v4, p0, Lexb;->a:Lexa$b;

    invoke-interface {v4}, Lexa$b;->e()V

    .line 127
    .end local v0    # "isHasCancelRecords":Z
    .end local v1    # "isHasEndedRecords":Z
    .end local v2    # "isHasOrderRecords":Z
    .end local v3    # "isHasRunningRecords":Z
    :cond_4
    :goto_0
    return-void

    .line 90
    .restart local v0    # "isHasCancelRecords":Z
    .restart local v1    # "isHasEndedRecords":Z
    .restart local v2    # "isHasOrderRecords":Z
    .restart local v3    # "isHasRunningRecords":Z
    :cond_5
    iget-object v4, p0, Lexb;->a:Lexa$b;

    invoke-interface {v4}, Lexa$b;->f()V

    .line 91
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    if-nez v4, :cond_a

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lexb;->c:Ljava/util/List;

    .line 96
    :goto_1
    if-eqz v3, :cond_6

    .line 97
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->conf_txt_ongoing_conference_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->d:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-boolean v4, p0, Lexb;->h:Z

    if-eqz v4, :cond_6

    .line 100
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    sget-object v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_6
    if-eqz v2, :cond_7

    .line 104
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->conf_txt_inorder_conference_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->e:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-boolean v4, p0, Lexb;->i:Z

    if-eqz v4, :cond_7

    .line 107
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    sget-object v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    if-eqz v1, :cond_8

    .line 111
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->conf_txt_ended_conference_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->g:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-boolean v4, p0, Lexb;->k:Z

    if-eqz v4, :cond_8

    .line 114
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    sget-object v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_8
    if-eqz v0, :cond_9

    .line 118
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->b:Landroid/app/Activity;

    sget v6, Leuj$l;->conf_txt_canceled_conference_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    iget-object v5, p0, Lexb;->f:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-boolean v4, p0, Lexb;->j:Z

    if-eqz v4, :cond_9

    .line 121
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    sget-object v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->CancelItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_9
    iget-object v4, p0, Lexb;->a:Lexa$b;

    iget-object v5, p0, Lexb;->c:Ljava/util/List;

    invoke-interface {v4, v5}, Lexa$b;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    :cond_a
    iget-object v4, p0, Lexb;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_1
.end method

.method protected final b(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Z
    .locals 1
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p0, Lexb;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexb;->f:Ljava/util/List;

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lexb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final c(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)Z
    .locals 1
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    iget-object v0, p0, Lexb;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexb;->g:Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lexb;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
