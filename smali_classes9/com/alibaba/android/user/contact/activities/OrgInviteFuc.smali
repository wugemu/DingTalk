.class public Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;
.super Ljava/lang/Object;
.source "OrgInviteFuc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;,
        Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

.field private c:Lcmg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmg",
            "<",
            "Lfpi;",
            "Lcom/alibaba/android/user/model/OrgInviteObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    return-object v0
.end method

.method static synthetic d(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 26
    .line 1260
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1261
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1263
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 73
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(JJ)V

    .line 74
    return-void
.end method

.method public final a(JJ)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J

    .prologue
    .line 78
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;JJ)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 198
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    .line 199
    .local v1, "isNetworkOk":Z
    if-nez v1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    if-eqz v2, :cond_0

    .line 201
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lezg$l;->server_down:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "error":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$5;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 214
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public final b(JJ)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J

    .prologue
    .line 108
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$2;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;JJ)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method c(JJ)Lcmg;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcmg",
            "<",
            "Lfpi;",
            "Lcom/alibaba/android/user/model/OrgInviteObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c:Lcmg;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c:Lcmg;

    .line 194
    :goto_0
    return-object v1

    .line 159
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$3;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;JJ)V

    .line 186
    .local v0, "eventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgInviteObject;>;"
    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$4;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;Lcma;J)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c:Lcmg;

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c:Lcmg;

    goto :goto_0
.end method
