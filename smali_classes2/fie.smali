.class public final Lfie;
.super Ljava/lang/Object;
.source "OrgPersonChooseControl.java"

# interfaces
.implements Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfhx",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lfhw;


# direct methods
.method public constructor <init>(Lfhw;)V
    .locals 1
    .param p1, "chooseListener"    # Lfhw;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfie;->a:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfie;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfie;->c:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lfie;->d:Lfhw;

    .line 44
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 6
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    iget-object v1, p0, Lfie;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 127
    iget-object v1, p0, Lfie;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 128
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 133
    .end local v0    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 4
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lfie;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 107
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Ljava/util/List;

    .line 110
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    return-object v0

    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lfie;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 49
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 51
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4076
    invoke-direct {p0, p1}, Lfie;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lfie;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4086
    :cond_0
    :goto_0
    return v0

    .line 4079
    :cond_1
    iget-object v1, p0, Lfie;->d:Lfhw;

    if-nez v1, :cond_2

    .line 4080
    iget-object v1, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4082
    :cond_2
    iget-object v0, p0, Lfie;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 4083
    if-eqz v0, :cond_0

    .line 4084
    iget-object v1, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Z)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3094
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3095
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    if-eqz p2, :cond_0

    iget-object v0, p0, Lfie;->d:Lfhw;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lfie;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 3099
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3101
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lfie;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lfie;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0, p1}, Lfie;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public final b()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 116
    invoke-virtual {p0}, Lfie;->a()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 118
    .local v2, "uids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    aput-wide v4, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v2
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0, p1}, Lfie;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    return v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2149
    iget-object v0, p0, Lfie;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2150
    iget-object v0, p0, Lfie;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2151
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2152
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2156
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method public final synthetic e(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1161
    invoke-direct {p0, p1}, Lfie;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lfie;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v4

    .line 1164
    :cond_1
    iget-object v0, p0, Lfie;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfie;->d:Lfhw;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lfie;->d:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    goto :goto_0
.end method
