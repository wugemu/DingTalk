.class public final Lfla;
.super Lfxq;
.source "CreateOrgV3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfla$c;,
        Lfla$d;,
        Lfla$b;,
        Lfla$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lfla$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfla$a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfla$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfla$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

.field public e:Lfla$d;

.field public f:Lfla$c;

.field private g:Lfla$b;

.field private j:Lfla$b;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfla;->b:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfla;->c:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfla;->k:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfla;->l:Ljava/util/Set;

    .line 56
    new-instance v0, Lfla$b;

    iget-object v1, p0, Lfla;->i:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfla$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfla;->g:Lfla$b;

    .line 57
    new-instance v0, Lfla$b;

    iget-object v1, p0, Lfla;->i:Landroid/app/Activity;

    sget v2, Lezg$l;->add_org_member:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfla$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfla;->j:Lfla$b;

    .line 58
    return-void
.end method

.method static synthetic a(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method

.method private a(J)Z
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 65
    iget-object v0, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;
    .locals 2
    .param p2, "target"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfla$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")",
            "Lfla$b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 254
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Lfla$b;>;"
    invoke-static {p1, p2}, Lfla;->c(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)I

    move-result v0

    .line 255
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfla$b;

    .line 259
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)I
    .locals 8
    .param p1, "target"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfla$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "from":Ljava/util/List;, "Ljava/util/List<Lfla$b;>;"
    const/4 v3, -0x1

    .line 274
    if-nez p1, :cond_1

    move v1, v3

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 278
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 279
    .local v0, "createOrgDataWrapper":Lfla$b;
    iget-object v4, v0, Lfla$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v4, :cond_3

    .line 283
    iget-object v2, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 284
    .local v2, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "createOrgDataWrapper":Lfla$b;
    :cond_4
    move v1, v3

    .line 290
    goto :goto_0
.end method

.method static synthetic c(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lfla;)Lfla$d;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->e:Lfla$d;

    return-object v0
.end method

.method static synthetic f(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lfla;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfla;

    .prologue
    .line 40
    iget-object v0, p0, Lfla;->i:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 201
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v1, "tempSet":Ljava/util/HashSet;
    iget-object v2, p0, Lfla;->l:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v2, p0, Lfla;->k:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    iget-object v2, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v2, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 208
    :cond_0
    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V
    .locals 2
    .param p1, "currentUser"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 125
    iget-object v0, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 127
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z
    .locals 2
    .param p2, "target"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfla$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 263
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Lfla$b;>;"
    invoke-static {p1, p2}, Lfla;->c(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)I

    move-result v0

    .line 264
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 265
    new-instance v1, Lfla$b;

    invoke-direct {v1, p2}, Lfla$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;
    .locals 4
    .param p1, "staff"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "removed":Lfla$b;
    if-eqz p1, :cond_0

    .line 136
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lfla;->b:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lfla;->b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lfla;->l:Ljava/util/Set;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lfla;->d()V

    .line 147
    iget-object v1, p0, Lfla;->a:Lfla$a;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lfla;->a:Lfla$a;

    invoke-virtual {p0}, Lfla;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lfla$a;->a(I)V

    .line 152
    :cond_1
    return-object v0

    .line 140
    :cond_2
    iget-object v1, p0, Lfla;->c:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lfla;->b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lfla;->k:Ljava/util/Set;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v2, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lfla;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    iget-object v2, p0, Lfla;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 235
    .local v0, "createOrgDataWrapper":Lfla$b;
    iget-object v2, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v0    # "createOrgDataWrapper":Lfla$b;
    :cond_1
    iget-object v2, p0, Lfla;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 238
    .restart local v0    # "createOrgDataWrapper":Lfla$b;
    iget-object v2, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v0    # "createOrgDataWrapper":Lfla$b;
    :cond_2
    return-object v1
.end method

.method public final b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    const/4 v8, 0x0

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_3

    .line 74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 75
    .local v3, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v3, :cond_2

    .line 78
    iget-object v4, p0, Lfla;->l:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-direct {p0, v4, v5}, Lfla;->a(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    iget-object v4, p0, Lfla;->k:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    iput-boolean v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 83
    invoke-virtual {p0, v3}, Lfla;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lfla$b;

    move-result-object v0

    .line 84
    .local v0, "createOrgDataWrapper":Lfla$b;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lfla$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v4, :cond_1

    .line 85
    iget-object v2, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 87
    .local v2, "obj":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    .line 90
    .end local v0    # "createOrgDataWrapper":Lfla$b;
    .end local v2    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_1
    iget-object v4, p0, Lfla;->l:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v4, p0, Lfla;->b:Ljava/util/List;

    new-instance v5, Lfla$b;

    invoke-direct {v5, v3}, Lfla$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {v4, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 73
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 95
    .end local v3    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    invoke-virtual {p0}, Lfla;->d()V

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v2, p0, Lfla;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    .line 247
    .local v0, "createOrgDataWrapper":Lfla$b;
    iget-object v2, v0, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0    # "createOrgDataWrapper":Lfla$b;
    :cond_0
    return-object v1
.end method

.method public final c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    .local p1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_3

    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 105
    .local v1, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v1, :cond_2

    .line 109
    iget-object v2, p0, Lfla;->k:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 110
    invoke-direct {p0, v2, v3}, Lfla;->a(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lfla;->l:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    iget-object v2, p0, Lfla;->k:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lfla;->c:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v4, Lfla$b;

    invoke-direct {v4, v1}, Lfla$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 119
    .end local v1    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    invoke-virtual {p0}, Lfla;->d()V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x2

    .line 294
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1317
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 296
    :goto_0
    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    iget-object v1, p0, Lfla;->g:Lfla$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    iget-object v1, p0, Lfla;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v0, p0, Lfla;->f:Lfla$c;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    new-instance v1, Lfla$b;

    iget-object v2, p0, Lfla;->f:Lfla$c;

    invoke-interface {v2}, Lfla$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lfla$b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    iget-object v1, p0, Lfla;->j:Lfla$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    iget-object v1, p0, Lfla;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v0, p0, Lfla;->f:Lfla$c;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    new-instance v1, Lfla$b;

    iget-object v2, p0, Lfla;->f:Lfla$c;

    invoke-interface {v2}, Lfla$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lfla$b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    invoke-virtual {p0}, Lfla;->notifyDataSetChanged()V

    .line 310
    return-void

    .line 1317
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lfla;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfla$b;

    iget v0, v0, Lfla$b;->b:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 322
    invoke-virtual {p0, p1}, Lfla;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfla$b;

    .line 323
    .local v1, "item":Lfla$b;
    iget v5, v1, Lfla$b;->b:I

    if-nez v5, :cond_5

    .line 324
    iget-object v5, p0, Lfla;->i:Landroid/app/Activity;

    sget v6, Lezg$j;->item_create_org_v3_header:I

    invoke-static {v5, p2, p3, v6, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 325
    .local v0, "holder":Lcre;
    sget v5, Lezg$h;->tv_header_name:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lfla$b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v5, v0, Lcre;->a:Landroid/view/View;

    .line 326
    new-instance v6, Lfla$1;

    invoke-direct {v6, p0, v1}, Lfla$1;-><init>(Lfla;Lfla$b;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    sget v5, Lezg$h;->bottom_divider:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lfla;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_2

    move v5, v7

    :goto_0
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    sget v5, Lezg$h;->icon_qrcode:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v3

    .line 345
    .local v3, "qrcodeView":Landroid/view/View;
    iget-object v5, p0, Lfla;->i:Landroid/app/Activity;

    sget v6, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lfla$b;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 346
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 347
    sget v5, Lezg$h;->img_icon:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v6, p0, Lfla;->i:Landroid/app/Activity;

    sget v9, Lezg$l;->icon_gm_fill:I

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    :goto_1
    sget v5, Lezg$h;->tv_add_member_optional:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3055
    iget-object p2, v0, Lcre;->a:Landroid/view/View;

    .line 423
    .end local v0    # "holder":Lcre;
    .end local v3    # "qrcodeView":Landroid/view/View;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_1
    :goto_3
    return-object p2

    .restart local v0    # "holder":Lcre;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    move v5, v8

    .line 341
    goto :goto_0

    .line 349
    .restart local v3    # "qrcodeView":Landroid/view/View;
    :cond_3
    invoke-static {}, Lfkw;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 351
    sget v5, Lezg$h;->img_icon:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v6, p0, Lfla;->i:Landroid/app/Activity;

    sget v9, Lezg$l;->icon_add:I

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v5, Lfla$2;

    invoke-direct {v5, p0}, Lfla$2;-><init>(Lfla;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    move v7, v8

    .line 363
    goto :goto_2

    .line 366
    .end local v0    # "holder":Lcre;
    .end local v3    # "qrcodeView":Landroid/view/View;
    :cond_5
    iget v5, v1, Lfla$b;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 367
    iget-object v5, p0, Lfla;->i:Landroid/app/Activity;

    sget v6, Lezg$j;->item_create_org_v3_member:I

    invoke-static {v5, p2, p3, v6, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 368
    .restart local v0    # "holder":Lcre;
    iget-object v2, v1, Lfla$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 369
    .local v2, "itemData":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    sget v5, Lezg$h;->tv_avatar:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 370
    sget v5, Lezg$h;->tv_member_name:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    sget v5, Lezg$h;->tv_position_name:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 372
    .local v4, "tvPosition":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 373
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v5, p0, Lfla;->i:Landroid/app/Activity;

    sget v6, Lezg$l;->dt_contact_job_position_others:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 375
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_4
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-nez v5, :cond_6

    .line 384
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_6
    iget-boolean v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 391
    :cond_7
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 392
    sget v5, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_5
    sget v5, Lezg$h;->icon_edit:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lfla$3;

    invoke-direct {v6, p0, v2}, Lfla$3;-><init>(Lfla;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    sget v5, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lfla$4;

    invoke-direct {v6, p0}, Lfla$4;-><init>(Lfla;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    sget v5, Lezg$h;->bottom_divider:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lfla;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_b

    :goto_6
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4055
    iget-object p2, v0, Lcre;->a:Landroid/view/View;

    goto/16 :goto_3

    .line 377
    :cond_8
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 380
    :cond_9
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 394
    :cond_a
    sget v5, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    move v7, v8

    .line 413
    goto :goto_6

    .line 416
    .end local v0    # "holder":Lcre;
    .end local v2    # "itemData":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .end local v4    # "tvPosition":Landroid/widget/TextView;
    :cond_c
    iget v5, v1, Lfla$b;->b:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 417
    iget-object v5, p0, Lfla;->i:Landroid/app/Activity;

    sget v6, Lezg$j;->item_create_org_v3_footer:I

    invoke-static {v5, p2, p3, v6, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 418
    .restart local v0    # "holder":Lcre;
    sget v5, Lezg$h;->tv_create_org_desc:I

    invoke-virtual {v0, v5}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lfla$b;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5055
    iget-object p2, v0, Lcre;->a:Landroid/view/View;

    goto/16 :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x3

    return v0
.end method
