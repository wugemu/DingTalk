.class public final Lfkq;
.super Ljava/lang/Object;
.source "OrgApplyFormModel.java"


# static fields
.field private static final a:Lfkq;


# instance fields
.field private b:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lfkq;

    invoke-direct {v0}, Lfkq;-><init>()V

    sput-object v0, Lfkq;->a:Lfkq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfkq;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 1
    .param p0, "x0"    # Lfkq;

    .prologue
    .line 17
    iget-object v0, p0, Lfkq;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    return-object v0
.end method

.method static synthetic a(Lfkq;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 0
    .param p0, "x0"    # Lfkq;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .prologue
    .line 17
    iput-object p1, p0, Lfkq;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    return-object p1
.end method

.method public static a()Lfkq;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lfkq;->a:Lfkq;

    return-object v0
.end method


# virtual methods
.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "orgFormObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;>;"
    const-string/jumbo v3, "OrgApplyFormModel"

    const-string/jumbo v4, "updateForm: Data is updating."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v1, Lfkq$2;

    invoke-direct {v1, p0, p4}, Lfkq$2;-><init>(Lfkq;Lcma;)V

    .line 86
    .local v1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;>;"
    new-instance v0, Lfkq$3;

    invoke-direct {v0, p0, v1}, Lfkq$3;-><init>(Lfkq;Lcma;)V

    .line 92
    .local v0, "handler":Lcmg;, "Lcmg<Lchl;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;>;"
    const-class v3, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 93
    .local v2, "service":Lcom/alibaba/android/user/idl/services/ContactIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lchl;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/android/user/idl/services/ContactIService;->updateOrgApplyItems(Ljava/lang/Long;Lchl;Liyv;)V

    .line 94
    return-void
.end method

.method public final b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lfkq;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "OrgApplyFormModel"

    const-string/jumbo v1, "getForm: Data is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lfkq;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    return-object v0
.end method
