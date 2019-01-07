.class public final Lbbp$42;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfe;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfe;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 338
    iput-object p1, p0, Lbbp$42;->b:Lbbp;

    iput-object p2, p0, Lbbp$42;->a:Lbfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 341
    iget-object v0, p0, Lbbp$42;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$42;->a:Lbfe;

    .line 1458
    if-eqz v1, :cond_0

    .line 1461
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 2263
    new-instance v2, Lbbq$11;

    invoke-direct {v2, v0, v1}, Lbbq$11;-><init>(Lbbq;Lbfe;)V

    invoke-virtual {v0, v2}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 342
    :cond_0
    return-void
.end method
