.class public final Lfku;
.super Ljava/lang/Object;
.source "OrgCreationCache.java"


# static fields
.field private static c:Lfku;


# instance fields
.field public a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lfku;->c:Lfku;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-direct {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;-><init>()V

    iput-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 51
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lfku;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lfku;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfku;->c:Lfku;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lfku;

    invoke-direct {v0}, Lfku;-><init>()V

    sput-object v0, Lfku;->c:Lfku;

    .line 43
    :cond_0
    sget-object v0, Lfku;->c:Lfku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 95
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "key_org_creation_data"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 96
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 97
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 55
    iget-wide v0, p0, Lfku;->b:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 58
    :cond_0
    iget-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    return-object v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lfku;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 1052
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lfku;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iput-wide v2, p0, Lfku;->b:J

    .line 80
    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .end local v0    # "obj":Ljava/lang/Object;
    iput-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 82
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 86
    iget-wide v0, p0, Lfku;->b:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lfku;->a:Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    .line 89
    :cond_0
    invoke-static {}, Lfku;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcmu;->b(Ljava/lang/String;)V

    .line 90
    return-void
.end method
