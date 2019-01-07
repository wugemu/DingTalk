.class final Lfak$50;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->d(JJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfoz;",
        "Lfrt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1629
    .local p2, "x0":Lcma;, "Lcma<Lfrt;>;"
    iput-object p1, p0, Lfak$50;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1629
    check-cast p1, Lfoz;

    .line 3050
    if-nez p1, :cond_0

    .line 3051
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3054
    :cond_0
    new-instance v1, Lfrt;

    invoke-direct {v1}, Lfrt;-><init>()V

    .line 3055
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    iget-object v2, p1, Lfoz;->a:Lcen;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    iput-object v0, v1, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3056
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    iget-object v2, p1, Lfoz;->b:Lcen;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    iput-object v0, v1, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3057
    iget-object v0, p1, Lfoz;->c:Ljava/lang/Boolean;

    .line 4022
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3057
    iput-boolean v0, v1, Lfrt;->c:Z

    .line 3058
    iget-object v0, p1, Lfoz;->d:Lfpb;

    iput-object v0, v1, Lfrt;->d:Lfpb;

    .line 3060
    iget-object v0, p1, Lfoz;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lfoz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lfrt;->e:Ljava/util/List;

    .line 3062
    iget-object v0, p1, Lfoz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcew;

    .line 3063
    if-eqz v0, :cond_1

    .line 3066
    iget-object v3, v1, Lfrt;->e:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->fromIDLModel(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3070
    :cond_2
    new-instance v0, Lfru;

    invoke-direct {v0}, Lfru;-><init>()V

    iget-object v0, p1, Lfoz;->f:Lfpa;

    invoke-static {v0}, Lfru;->a(Lfpa;)Lfru;

    move-result-object v0

    iput-object v0, v1, Lfrt;->f:Lfru;

    .line 3071
    new-instance v0, Lfru;

    invoke-direct {v0}, Lfru;-><init>()V

    iget-object v0, p1, Lfoz;->g:Lfpa;

    invoke-static {v0}, Lfru;->a(Lfpa;)Lfru;

    move-result-object v0

    iput-object v0, v1, Lfrt;->g:Lfru;

    move-object v0, v1

    .line 1629
    goto :goto_0
.end method
