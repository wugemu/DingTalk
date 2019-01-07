.class public final Lfic;
.super Ljava/lang/Object;
.source "OrgDeptChooseControl.java"

# interfaces
.implements Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfhx",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
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
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lfhw;


# direct methods
.method public constructor <init>(Lfhw;)V
    .locals 1
    .param p1, "chooseListener"    # Lfhw;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfic;->a:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfic;->b:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lfic;->c:Lfhw;

    .line 44
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 6
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lfic;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 122
    iget-object v1, p0, Lfic;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 123
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 124
    const/4 v1, 0x1

    .line 128
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z
    .locals 4
    .param p1, "orgDeptObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 133
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 134
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 136
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    const/4 v1, 0x1

    .line 142
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

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
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 103
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Ljava/util/List;

    .line 106
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :goto_0
    return-object v0

    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
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
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

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

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 51
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
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

    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3073
    invoke-direct {p0, p1}, Lfic;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lfic;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3083
    :cond_0
    :goto_0
    return v0

    .line 3076
    :cond_1
    iget-object v1, p0, Lfic;->c:Lfhw;

    if-nez v1, :cond_2

    .line 3077
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3079
    :cond_2
    iget-object v0, p0, Lfic;->c:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 3080
    if-eqz v0, :cond_0

    .line 3081
    iget-object v1, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

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
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2090
    iget-object v0, p0, Lfic;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2091
    iget-object v0, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    if-eqz p2, :cond_0

    iget-object v0, p0, Lfic;->c:Lfhw;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lfic;->c:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z

    move-result v0

    .line 2095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2097
    :cond_1
    const/4 v0, 0x0

    .line 34
    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v0, p0, Lfic;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iput-object p1, p0, Lfic;->b:Ljava/util/List;

    .line 64
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {p0, p1}, Lfic;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public final b()[J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    invoke-virtual {p0}, Lfic;->a()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "mChoosedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [J

    .line 113
    .local v0, "deptIds":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 114
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    aput-wide v4, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {p0, p1}, Lfic;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic e(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1152
    invoke-direct {p0, p1}, Lfic;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lfic;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v4

    .line 1155
    :cond_1
    iget-object v0, p0, Lfic;->a:Ljava/util/Map;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Lfic;->c:Lfhw;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lfic;->c:Lfhw;

    invoke-static {p1}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lfhw;->c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    goto :goto_0
.end method
