.class final Lcix$7;
.super Ljava/lang/Object;
.source "DDServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcix;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 419
    invoke-static {}, Lcix;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcix$7$1;

    invoke-direct {v1, p0}, Lcix$7$1;-><init>(Lcix$7;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    :cond_0
    return-void
.end method
