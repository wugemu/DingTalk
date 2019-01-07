.class final Lgvw$1;
.super Ljava/lang/Object;
.source "QQZoneShareUnit.java"

# interfaces
.implements Ljuc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgvw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgvw;


# direct methods
.method constructor <init>(Lgvw;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgvw;

    .prologue
    .line 86
    iput-object p1, p0, Lgvw$1;->b:Lgvw;

    iput-object p2, p0, Lgvw$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 106
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qqzone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share default cancel"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "share_to"

    const-string/jumbo v2, "qqzone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lgvw$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "share_to"

    invoke-interface {v1, v5, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    const-string/jumbo v1, "share"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qqzone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share default suc"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget v1, Lgvn$h;->share_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 95
    return-void
.end method

.method public final a(Ljue;)V
    .locals 5
    .param p1, "uiError"    # Ljue;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "qqzone"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " share default error:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Ljue;->a:I

    .line 100
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Ljue;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p1, Ljue;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 99
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 102
    return-void
.end method
