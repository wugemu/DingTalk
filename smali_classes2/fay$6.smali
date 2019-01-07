.class final Lfay$6;
.super Ljava/lang/Object;
.source "OrgScoreAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfay;


# direct methods
.method constructor <init>(Lfay;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfay;

    .prologue
    .line 195
    iput-object p1, p0, Lfay$6;->b:Lfay;

    iput-object p2, p0, Lfay$6;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lfay$6;->a:Lcma;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
