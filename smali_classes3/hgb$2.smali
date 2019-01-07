.class final Lhgb$2;
.super Ljava/lang/Object;
.source "LightBeaconManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgb;->didEnterRegion(Lorg/altbeacon/beacon/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgb;


# direct methods
.method constructor <init>(Lhgb;)V
    .locals 0
    .param p1, "this$0"    # Lhgb;

    .prologue
    .line 181
    iput-object p1, p0, Lhgb$2;->a:Lhgb;

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
    .line 184
    invoke-static {}, Lhrt;->a()Lhrt;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lhrt;->a(I)V

    .line 185
    return-void
.end method
