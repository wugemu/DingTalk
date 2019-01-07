.class final Lkd$1;
.super Ljava/lang/Object;
.source "StrategyInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkd;


# direct methods
.method constructor <init>(Lkd;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lkd$1;->a:Lkd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lkd$1;->a:Lkd;

    invoke-static {v0}, Lkd;->a(Lkd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lkd$1;->a:Lkd;

    iget-object v0, v0, Lkd;->a:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->a()V

    .line 271
    :cond_0
    return-void
.end method
