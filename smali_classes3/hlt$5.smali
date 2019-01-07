.class final Lhlt$5;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Lgvk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhlt$a;

.field final synthetic e:Lhlt;


# direct methods
.method constructor <init>(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
    .locals 0
    .param p1, "this$0"    # Lhlt;

    .prologue
    .line 930
    iput-object p1, p0, Lhlt$5;->e:Lhlt;

    iput-object p2, p0, Lhlt$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lhlt$5;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lhlt$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lhlt$5;->d:Lhlt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "isOpenApp4MiniApp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 933
    const-string/jumbo v0, "MiniappRuntime"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startMiniApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "checkOpenType="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lhlt$5$1;

    invoke-direct {v1, p0, p1}, Lhlt$5$1;-><init>(Lhlt$5;Z)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 940
    return-void
.end method
