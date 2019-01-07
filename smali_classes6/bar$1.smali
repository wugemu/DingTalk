.class final Lbar$1;
.super Ljava/lang/Object;
.source "DingUnReadPresenter.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbar;


# direct methods
.method constructor <init>(Lbar;)V
    .locals 0
    .param p1, "this$0"    # Lbar;

    .prologue
    .line 52
    iput-object p1, p0, Lbar$1;->a:Lbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "orderlyData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p2, "orderlessData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "DingUnReadPresenter orderlyData count:"

    aput-object v0, v1, v4

    if-nez p1, :cond_3

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v1, v5

    const-string/jumbo v0, ", orderlessData:"

    aput-object v0, v1, v6

    const/4 v2, 0x3

    if-nez p2, :cond_4

    const-string/jumbo v0, "0"

    :goto_1
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lbar$1;->a:Lbar;

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    if-eqz p1, :cond_0

    .line 1154
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbbs;->j(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 1155
    if-eqz v2, :cond_0

    .line 1156
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1159
    :cond_0
    if-eqz p2, :cond_1

    .line 1160
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbbs;->j(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 1161
    if-eqz v2, :cond_1

    .line 1162
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1166
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1167
    if-eqz v0, :cond_2

    iget-object v3, v1, Lbar;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1168
    iget-object v3, v1, Lbar;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1172
    :cond_5
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v2, "[DingUnReadPresenter] updateData mUnconfirmedDingList.count:"

    aput-object v2, v0, v4

    iget-object v2, v1, Lbar;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v1}, Lbar;->d()V

    .line 57
    return-void
.end method
