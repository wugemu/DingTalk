.class final Lgon$74;
.super Lcmg;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lgjg;",
        "Lgob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3744
    .local p2, "x0":Lcma;, "Lcma<Lgob;>;"
    iput-object p1, p0, Lgon$74;->a:Lgon;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 3744
    check-cast p1, Lgjg;

    .line 5040
    if-nez p1, :cond_0

    .line 5041
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5044
    :cond_0
    new-instance v3, Lgob;

    invoke-direct {v3}, Lgob;-><init>()V

    .line 5045
    iget-object v0, p1, Lgjg;->a:Ljava/lang/Long;

    .line 6044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 5045
    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lgob;->a:Z

    .line 5047
    iget-boolean v0, v3, Lgob;->a:Z

    if-nez v0, :cond_1

    .line 5048
    iget-object v0, p1, Lgjg;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgob;->b:Ljava/lang/String;

    .line 5049
    iget-object v0, p1, Lgjg;->b:Ljava/lang/String;

    iput-object v0, v3, Lgob;->c:Ljava/lang/String;

    .line 5052
    :cond_1
    const-string/jumbo v0, "13900208"

    iget-object v4, v3, Lgob;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5053
    iput-boolean v1, v3, Lgob;->e:Z

    .line 5054
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_cspace_local_edit_error_editing_by_others:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgob;->c:Ljava/lang/String;

    .line 5057
    :cond_2
    iget-object v0, p1, Lgjg;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lgjg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lgjg;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5058
    iget-object v0, p1, Lgjg;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjd;

    .line 5060
    iget-object v1, v0, Lgjd;->g:Ljava/lang/Long;

    .line 7044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 5060
    iput-wide v4, v3, Lgob;->d:J

    .line 5062
    iget-boolean v1, v3, Lgob;->e:Z

    if-nez v1, :cond_3

    .line 5063
    iget-object v1, v0, Lgjd;->e:Ljava/lang/Boolean;

    .line 8022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 5063
    iput-boolean v1, v3, Lgob;->e:Z

    .line 5066
    :cond_3
    iget-object v0, v0, Lgjd;->f:Ljava/lang/Long;

    .line 8044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 5066
    iput-wide v0, v3, Lgob;->f:J

    .line 5069
    :cond_4
    iget-boolean v0, v3, Lgob;->e:Z

    if-eqz v0, :cond_5

    .line 5071
    iput-boolean v2, v3, Lgob;->a:Z

    .line 5072
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_cspace_local_edit_error_editing_by_others:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgob;->c:Ljava/lang/String;

    :cond_5
    move-object v0, v3

    .line 3744
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 5045
    goto/16 :goto_1
.end method
