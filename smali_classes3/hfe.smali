.class public final Lhfe;
.super Lcjk;
.source "AppInfoDBServiceImpl.java"

# interfaces
.implements Lhfd;


# static fields
.field private static a:Lhfd;


# instance fields
.field private e:Lcjk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lhfe;

    invoke-direct {v0}, Lhfe;-><init>()V

    sput-object v0, Lhfe;->a:Lhfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcjk;-><init>()V

    .line 19
    new-instance v0, Lcjk;

    invoke-direct {v0}, Lcjk;-><init>()V

    iput-object v0, p0, Lhfe;->e:Lcjk;

    .line 22
    iget-object v0, p0, Lhfe;->e:Lcjk;

    const-string/jumbo v1, "AppInfoSourceImpl"

    const-class v2, Lhfg;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public static a()Lhfd;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lhfe;->a:Lhfd;

    return-object v0
.end method

.method private b()Lhff;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Lhfe;->e:Lcjk;

    const-string/jumbo v2, "AppInfoSourceImpl"

    invoke-virtual {v1, v2}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    .line 79
    .local v0, "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lhff;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lhff;

    .line 83
    .end local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    :goto_0
    return-object v0

    .restart local v0    # "dataSource":Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    invoke-direct {p0}, Lhfe;->b()Lhff;

    move-result-object v0

    .line 69
    .local v0, "source":Lhff;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lhff;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    invoke-direct {p0}, Lhfe;->b()Lhff;

    move-result-object v0

    .line 39
    .local v0, "source":Lhff;
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lhff;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z
    .locals 2
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    invoke-direct {p0}, Lhfe;->b()Lhff;

    move-result-object v0

    .line 28
    .local v0, "source":Lhff;
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lhff;->a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z

    move-result v1

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
