.class final Lgon$5;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 963
    iput-object p1, p0, Lgon$5;->d:Lgon;

    iput-object p2, p0, Lgon$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$5;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 966
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "SpaceRPC.infoDentry: spaceId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lgon$5;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lgon$5;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 967
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "id or spaceId is empty"

    const/4 v5, 0x0

    .line 966
    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lgon$5;->c:Lcma;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lgon$5;->c:Lcma;

    const-string/jumbo v1, "20170720"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_0
    return-void
.end method
