.class public abstract Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "RobotBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/view/LayoutInflater;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->b:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->c:Landroid/view/LayoutInflater;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "isUpdated":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz p1, :cond_1

    .line 68
    const/4 v2, -0x1

    .line 69
    .local v2, "targetIndex":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 71
    move v2, v0

    .line 75
    :cond_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->notifyDataSetChanged()V

    .line 82
    .end local v0    # "index":I
    .end local v2    # "targetIndex":I
    :cond_1
    return v1

    .line 69
    .restart local v0    # "index":I
    .restart local v2    # "targetIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "isDeleted":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz p1, :cond_1

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 98
    .local v2, "modelObject":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->notifyDataSetChanged()V

    .line 101
    const/4 v0, 0x1

    .line 106
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    .end local v2    # "modelObject":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->e:Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->e:Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;->a:I

    if-ltz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->e:Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter$a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/adapters/RobotBaseAdapter;->a(I)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method
