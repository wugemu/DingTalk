.class public final Lgvt;
.super Lgvu;
.source "CustomShareUnit.java"


# instance fields
.field private a:Lgwm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgwm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;

    .prologue
    .line 17
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 18
    iput-object p2, p0, Lgvt;->a:Lgwm;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgwm;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 23
    iput-object p2, p0, Lgvt;->a:Lgwm;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgwm;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgwm;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconRes"    # I

    .prologue
    .line 27
    new-instance v0, Lgwa;

    invoke-direct {v0}, Lgwa;-><init>()V

    invoke-static {p1, p3, p4}, Lgwa;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 28
    iput-object p2, p0, Lgvt;->a:Lgwm;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgvt;->a:Lgwm;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lgvt;->a:Lgwm;

    invoke-interface {v0}, Lgwm;->clean()V

    .line 36
    :cond_0
    return-void
.end method

.method public final share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 3
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const-string/jumbo v2, "[CustomShareUnit] share clicked"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lgvt;->a:Lgwm;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lgvt;->a:Lgwm;

    invoke-interface {v0, p1}, Lgwm;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 44
    :cond_0
    return-void
.end method
