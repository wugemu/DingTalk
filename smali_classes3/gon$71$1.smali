.class final Lgon$71$1;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon$71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lghy;

.field final synthetic b:Lgon$71;


# direct methods
.method constructor <init>(Lgon$71;Lghy;)V
    .locals 0
    .param p1, "this$1"    # Lgon$71;

    .prologue
    .line 3658
    iput-object p1, p0, Lgon$71$1;->b:Lgon$71;

    iput-object p2, p0, Lgon$71$1;->a:Lghy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3661
    iget-object v1, p0, Lgon$71$1;->a:Lghy;

    iget-object v2, p0, Lgon$71$1;->b:Lgon$71;

    iget-object v2, v2, Lgon$71;->b:Ljava/util/List;

    .line 3662
    invoke-static {v1, v2}, Lgoc;->a(Lghy;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 3663
    .local v0, "extModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$71$1$1;

    invoke-direct {v2, p0, v0}, Lgon$71$1$1;-><init>(Lgon$71$1;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 3669
    return-void
.end method
