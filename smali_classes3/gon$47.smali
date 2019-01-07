.class public final Lgon$47;
.super Lcmg;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lgjk;",
        "Lgof;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2735
    .local p2, "x0":Lcma;, "Lcma<Lgof;>;"
    iput-object p1, p0, Lgon$47;->a:Lgon;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2735
    check-cast p1, Lgjk;

    .line 4026
    if-nez p1, :cond_1

    .line 4027
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 4030
    :cond_1
    new-instance v0, Lgof;

    invoke-direct {v0}, Lgof;-><init>()V

    .line 4031
    iget-object v1, p1, Lgjk;->a:Ljava/lang/Boolean;

    .line 5022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 4031
    iput-boolean v1, v0, Lgof;->a:Z

    .line 4032
    iget-object v1, p1, Lgjk;->b:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4032
    iput-wide v2, v0, Lgof;->b:J

    .line 4033
    iget-object v1, p1, Lgjk;->c:Ljava/lang/String;

    iput-object v1, v0, Lgof;->c:Ljava/lang/String;

    .line 4034
    iget-object v1, p1, Lgjk;->d:Ljava/lang/String;

    iput-object v1, v0, Lgof;->d:Ljava/lang/String;

    .line 4036
    const-wide/32 v2, 0xc6ab68

    iget-wide v4, v0, Lgof;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 4037
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_online_edit_not_support:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgof;->c:Ljava/lang/String;

    goto :goto_0
.end method
