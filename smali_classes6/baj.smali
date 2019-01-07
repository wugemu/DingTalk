.class public final Lbaj;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListPresenter.java"

# interfaces
.implements Lbai$a;


# instance fields
.field public a:Lbai$b;

.field public b:I

.field public c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbhs;

.field private e:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lbai$b;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uiView"    # Lbai$b;

    .prologue
    const/4 v1, 0x6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbaj;->c:Ljava/util/Collection;

    .line 39
    new-instance v0, Lbaj$1;

    invoke-direct {v0, p0}, Lbaj$1;-><init>(Lbaj;)V

    iput-object v0, p0, Lbaj;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 62
    const-string/jumbo v0, "intent_key_filter_type"

    invoke-static {p1, v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbaj;->b:I

    .line 64
    iput-object p2, p0, Lbaj;->a:Lbai$b;

    .line 65
    invoke-interface {p2, p0}, Lbai$b;->setPresenter(Lcjd;)V

    .line 67
    iget v0, p0, Lbaj;->b:I

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lbaj;->a:Lbai$b;

    sget v1, Laxp$i;->ding_filter_focus:I

    invoke-interface {v0, v1}, Lbai$b;->b(I)V

    .line 1093
    :goto_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lbaj;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbaj;->a(Lbhs$a;)V

    .line 75
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lbaj;->a:Lbai$b;

    sget v1, Laxp$i;->ding_filter_deleted:I

    invoke-interface {v0, v1}, Lbai$b;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbhs$a;)V
    .locals 2
    .param p1, "requestMoreCallback"    # Lbhs$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lbaj;->d:Lbhs;

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lbaj;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    :goto_0
    iput-object v0, p0, Lbaj;->d:Lbhs;

    .line 119
    :cond_0
    iget-object v0, p0, Lbaj;->d:Lbhs;

    invoke-virtual {v0, p1}, Lbhs;->a(Lbhs$a;)V

    .line 120
    return-void

    .line 115
    :cond_1
    new-instance v0, Lbhs;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-direct {v0, v1}, Lbhs;-><init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 155
    .local p1, "deleteDingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Lbaj$3;

    invoke-direct {v1, p0}, Lbaj$3;-><init>(Lbaj;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lbaj;->a:Lbai$b;

    .line 175
    invoke-interface {v3}, Lbai$b;->a()Landroid/app/Activity;

    move-result-object v3

    .line 159
    invoke-static {v1, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 178
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v1, p0, Lbaj;->a:Lbai$b;

    sget v2, Laxp$i;->loading:I

    invoke-interface {v1, v2}, Lbai$b;->a(I)V

    .line 179
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lbaj;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 89
    .line 1097
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v2, p0, Lbaj;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-virtual {v0, v1, v2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 90
    return-void
.end method
