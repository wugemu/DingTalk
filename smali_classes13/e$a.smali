.class final Le$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/Lifecycle$State;


# virtual methods
.method final a(Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "owner"    # Ld;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    invoke-static {p2}, Le;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 325
    .local v0, "newState":Landroid/arch/lifecycle/Lifecycle$State;
    iget-object v1, p0, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 1311
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    .line 325
    :cond_0
    iput-object v1, p0, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 326
    const/4 v1, 0x0

    invoke-interface {v1, p1, p2}, Lc;->a(Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 327
    iput-object v0, p0, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 328
    return-void
.end method
