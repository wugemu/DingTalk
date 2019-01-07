.class final Lhgb$5$1;
.super Ljava/lang/Object;
.source "LightBeaconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgb$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhjw;

.field final synthetic b:Lhgb$5;


# direct methods
.method constructor <init>(Lhgb$5;Lhjw;)V
    .locals 0
    .param p1, "this$1"    # Lhgb$5;

    .prologue
    .line 433
    iput-object p1, p0, Lhgb$5$1;->b:Lhgb$5;

    iput-object p2, p0, Lhgb$5$1;->a:Lhjw;

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
    .line 436
    invoke-static {}, Lhrt;->a()Lhrt;

    move-result-object v0

    iget-object v1, p0, Lhgb$5$1;->a:Lhjw;

    iget-object v1, v1, Lhjw;->f:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 436
    invoke-virtual {v0, v1}, Lhrt;->a(I)V

    .line 437
    return-void
.end method
