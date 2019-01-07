.class public final Lflb;
.super Lfxq;
.source "CreateOrgV4Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflb$c;,
        Lflb$b;,
        Lflb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lflb$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lflb$a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflb$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflb$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lflb$c;

.field private g:Lflb$b;

.field private j:Lflb$b;

.field private k:Lflb$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflb;->b:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflb;->c:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lflb;->d:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lflb;->e:Ljava/util/Set;

    .line 56
    new-instance v0, Lflb$b;

    iget-object v1, p0, Lflb;->i:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_create_team_add_member_invite_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lflb$b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lflb;->g:Lflb$b;

    .line 57
    new-instance v0, Lflb$b;

    iget-object v1, p0, Lflb;->i:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lflb$b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lflb;->j:Lflb$b;

    .line 58
    new-instance v0, Lflb$b;

    iget-object v1, p0, Lflb;->i:Landroid/app/Activity;

    sget v2, Lezg$l;->add_org_member:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lflb$b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lflb;->k:Lflb$b;

    .line 59
    return-void
.end method

.method static synthetic a(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;
    .locals 2
    .param p2, "target"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lflb$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")",
            "Lflb$b;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 260
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Lflb$b;>;"
    invoke-static {p1, p2}, Lflb;->c(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)I

    move-result v0

    .line 261
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflb$b;

    .line 265
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
            "Lflb$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "from":Ljava/util/List;, "Ljava/util/List<Lflb$b;>;"
    const/4 v3, -0x1

    .line 280
    if-nez p1, :cond_1

    move v1, v3

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 284
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflb$b;

    .line 285
    .local v0, "createOrgDataWrapper":Lflb$b;
    iget-object v4, v0, Lflb$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v4, :cond_3

    .line 289
    iget-object v2, v0, Lflb$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 290
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

    .line 291
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    .end local v2    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "createOrgDataWrapper":Lflb$b;
    :cond_4
    move v1, v3

    .line 296
    goto :goto_0
.end method

.method static synthetic c(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lflb;)Lflb$c;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->f:Lflb$c;

    return-object v0
.end method

.method static synthetic f(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lflb;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lflb;

    .prologue
    .line 40
    iget-object v0, p0, Lflb;->i:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 198
    iget-object v1, p0, Lflb;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lflb;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 202
    .local v0, "count":I
    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;
    .locals 4
    .param p1, "staff"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "removed":Lflb$b;
    if-eqz p1, :cond_0

    .line 133
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lflb;->b:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lflb;->b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lflb;->e:Ljava/util/Set;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lflb;->d()V

    .line 144
    iget-object v1, p0, Lflb;->a:Lflb$a;

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lflb;->a()I

    .line 149
    :cond_1
    return-object v0

    .line 137
    :cond_2
    iget-object v1, p0, Lflb;->c:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lflb;->b(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lflb;->d:Ljava/util/Set;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z
    .locals 2
    .param p2, "target"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lflb$b;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 269
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Lflb$b;>;"
    invoke-static {p1, p2}, Lflb;->c(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)I

    move-result v0

    .line 270
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 271
    new-instance v1, Lflb$b;

    invoke-direct {v1, p2}, Lflb$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    const/4 v1, 0x1

    .line 275
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v2, p0, Lflb;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflb$b;

    .line 241
    .local v0, "createOrgDataWrapper":Lflb$b;
    iget-object v2, v0, Lflb$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    .end local v0    # "createOrgDataWrapper":Lflb$b;
    :cond_0
    iget-object v2, p0, Lflb;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflb$b;

    .line 244
    .restart local v0    # "createOrgDataWrapper":Lflb$b;
    iget-object v2, v0, Lflb$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v0    # "createOrgDataWrapper":Lflb$b;
    :cond_1
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

    .line 66
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_3

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 72
    .local v3, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v3, :cond_2

    .line 75
    iget-object v4, p0, Lflb;->e:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 78
    iget-object v4, p0, Lflb;->d:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    iput-boolean v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 80
    invoke-virtual {p0, v3}, Lflb;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;

    move-result-object v0

    .line 81
    .local v0, "createOrgDataWrapper":Lflb$b;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lflb$b;->a:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v4, :cond_1

    .line 82
    iget-object v2, v0, Lflb$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 84
    .local v2, "obj":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    .line 87
    .end local v0    # "createOrgDataWrapper":Lflb$b;
    .end local v2    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_1
    iget-object v4, p0, Lflb;->e:Ljava/util/Set;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lflb;->b:Ljava/util/List;

    new-instance v5, Lflb$b;

    invoke-direct {v5, v3}, Lflb$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {v4, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 70
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 92
    .end local v3    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    invoke-virtual {p0}, Lflb;->d()V

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
    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    iget-object v2, p0, Lflb;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflb$b;

    .line 253
    .local v0, "createOrgDataWrapper":Lflb$b;
    iget-object v2, v0, Lflb$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0    # "createOrgDataWrapper":Lflb$b;
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
    .line 96
    .local p1, "memberList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_3

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 102
    .local v1, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lflb;->d:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 107
    iget-object v2, p0, Lflb;->e:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lflb;->d:Ljava/util/Set;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lflb;->c:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v4, Lflb$b;

    invoke-direct {v4, v1}, Lflb$b;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 116
    .end local v1    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    invoke-virtual {p0}, Lflb;->d()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 300
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    iget-object v1, p0, Lflb;->g:Lflb$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 304
    :goto_0
    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    iget-object v1, p0, Lflb;->j:Lflb$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    iget-object v1, p0, Lflb;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    :cond_0
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    iget-object v1, p0, Lflb;->k:Lflb$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lflb;->h:Ljava/util/List;

    iget-object v1, p0, Lflb;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-virtual {p0}, Lflb;->notifyDataSetChanged()V

    .line 313
    return-void

    .line 2320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 489
    iget-object v1, p0, Lflb;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflb$b;

    .line 490
    .local v0, "item":Lflb$b;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x3

    .line 494
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lflb$b;->b:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 325
    invoke-virtual {p0, p1}, Lflb;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflb$b;

    .line 327
    .local v2, "item":Lflb$b;
    if-nez v2, :cond_1

    .line 479
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .line 331
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    iget v6, v2, Lflb$b;->b:I

    if-nez v6, :cond_3

    .line 332
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$j;->item_create_org_v4_header:I

    invoke-static {v6, p2, p3, v7, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 333
    .local v1, "holder":Lcre;
    sget v6, Lezg$h;->img_icon:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v7, Lezg$l;->icon_transpond_fill:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 334
    sget v6, Lezg$h;->tv_header_name:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lflb$b;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    sget v6, Lezg$h;->tv_header_desc:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .local v0, "descTv":Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    sget v6, Lezg$l;->dt_create_team_add_member_invite_subtitle:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 340
    sget v6, Lezg$h;->icon_qrcode:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 342
    sget v6, Lezg$h;->top_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 343
    sget v6, Lezg$h;->bottom_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lflb;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3055
    iget-object v6, v1, Lcre;->a:Landroid/view/View;

    .line 345
    new-instance v7, Lflb$1;

    invoke-direct {v7, p0}, Lflb$1;-><init>(Lflb;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4055
    iget-object p2, v1, Lcre;->a:Landroid/view/View;

    goto :goto_0

    :cond_2
    move v6, v9

    .line 343
    goto :goto_1

    .line 359
    .end local v0    # "descTv":Landroid/widget/TextView;
    .end local v1    # "holder":Lcre;
    :cond_3
    iget v6, v2, Lflb$b;->b:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 360
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$j;->item_create_org_v4_header:I

    invoke-static {v6, p2, p3, v7, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 361
    .restart local v1    # "holder":Lcre;
    sget v6, Lezg$h;->img_icon:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v7, Lezg$l;->icon_gm_fill:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 362
    sget v6, Lezg$h;->tv_header_name:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lflb$b;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    sget v6, Lezg$h;->tv_header_desc:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .restart local v0    # "descTv":Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    sget v6, Lezg$l;->dt_createteam_add_admin_section_tip:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 368
    sget v6, Lezg$h;->icon_qrcode:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 370
    sget v6, Lezg$h;->top_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 371
    sget v6, Lezg$h;->bottom_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lflb;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_4

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5055
    iget-object v6, v1, Lcre;->a:Landroid/view/View;

    .line 373
    new-instance v7, Lflb$2;

    invoke-direct {v7, p0}, Lflb$2;-><init>(Lflb;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6055
    iget-object p2, v1, Lcre;->a:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    move v8, v9

    .line 371
    goto :goto_2

    .line 386
    .end local v0    # "descTv":Landroid/widget/TextView;
    .end local v1    # "holder":Lcre;
    :cond_5
    iget v6, v2, Lflb$b;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 387
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$j;->item_create_org_v4_header:I

    invoke-static {v6, p2, p3, v7, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 388
    .restart local v1    # "holder":Lcre;
    sget v6, Lezg$h;->img_icon:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v7, Lezg$l;->icon_add:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 389
    sget v6, Lezg$h;->tv_header_name:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lflb$b;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    sget v6, Lezg$h;->tv_header_desc:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 391
    sget v6, Lezg$h;->icon_qrcode:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v4

    .line 392
    .local v4, "qrcodeView":Landroid/view/View;
    invoke-static {}, Lfkw;->c()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 393
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 394
    new-instance v6, Lflb$3;

    invoke-direct {v6, p0}, Lflb$3;-><init>(Lflb;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :goto_3
    sget v6, Lezg$h;->top_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 407
    sget v6, Lezg$h;->bottom_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lflb;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_7

    :goto_4
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 7055
    iget-object v6, v1, Lcre;->a:Landroid/view/View;

    .line 409
    new-instance v7, Lflb$4;

    invoke-direct {v7, p0}, Lflb$4;-><init>(Lflb;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8055
    iget-object p2, v1, Lcre;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 403
    :cond_6
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v8, v9

    .line 407
    goto :goto_4

    .line 422
    .end local v1    # "holder":Lcre;
    .end local v4    # "qrcodeView":Landroid/view/View;
    :cond_8
    iget v6, v2, Lflb$b;->b:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f

    .line 423
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$j;->item_create_org_v3_member:I

    invoke-static {v6, p2, p3, v7, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 424
    .restart local v1    # "holder":Lcre;
    iget-object v3, v2, Lflb$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 425
    .local v3, "itemData":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    sget v6, Lezg$h;->tv_avatar:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 426
    sget v6, Lezg$h;->tv_member_name:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    sget v6, Lezg$h;->tv_position_name:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 428
    .local v5, "tvPosition":Landroid/widget/TextView;
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 429
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$l;->dt_contact_job_position_others:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 431
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :goto_5
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-nez v6, :cond_9

    .line 440
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_9
    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v6, :cond_a

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 447
    :cond_a
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 448
    sget v6, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :goto_6
    sget v6, Lezg$h;->icon_edit:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lflb$5;

    invoke-direct {v7, p0, v3}, Lflb$5;-><init>(Lflb;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    sget v6, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lflb$6;

    invoke-direct {v7, p0}, Lflb$6;-><init>(Lflb;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    sget v6, Lezg$h;->bottom_divider:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lflb;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_e

    :goto_7
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 9055
    iget-object p2, v1, Lcre;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 433
    :cond_b
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 436
    :cond_c
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 450
    :cond_d
    sget v6, Lezg$h;->tv_invitation_hint:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_e
    move v8, v9

    .line 469
    goto :goto_7

    .line 472
    .end local v1    # "holder":Lcre;
    .end local v3    # "itemData":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .end local v5    # "tvPosition":Landroid/widget/TextView;
    :cond_f
    iget v6, v2, Lflb$b;->b:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 473
    iget-object v6, p0, Lflb;->i:Landroid/app/Activity;

    sget v7, Lezg$j;->item_create_org_v3_footer:I

    invoke-static {v6, p2, p3, v7, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v1

    .line 474
    .restart local v1    # "holder":Lcre;
    sget v6, Lezg$h;->tv_create_org_desc:I

    invoke-virtual {v1, v6}, Lcre;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lflb$b;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10055
    iget-object p2, v1, Lcre;->a:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x5

    return v0
.end method
