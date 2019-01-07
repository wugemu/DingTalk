.class final Lgpq$6;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpq;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgpq;


# direct methods
.method constructor <init>(Lgpq;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgpq;

    .prologue
    .line 461
    iput-object p1, p0, Lgpq$6;->c:Lgpq;

    iput-object p2, p0, Lgpq$6;->a:Lcma;

    iput-object p3, p0, Lgpq$6;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 464
    iget-object v0, p0, Lgpq$6;->a:Lcma;

    iget-object v1, p0, Lgpq$6;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 465
    return-void
.end method
