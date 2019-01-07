.class final Lddy$3;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 665
    iput-object p1, p0, Lddy$3;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 699
    iget-object v0, p0, Lddy$3;->a:Lddy;

    .line 4066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 699
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lddy$3;->a:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 700
    invoke-interface {v0}, Lddx$b;->m()V

    .line 702
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loading(\u804a\u5929-\u5386\u53f2\u62c9\u53d6\u65f6\u95f4) start :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 675
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "end :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 687
    iget-object v0, p0, Lddy$3;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 687
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lddy$3;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 688
    invoke-interface {v0, p2, p3}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 694
    iget-object v0, p0, Lddy$3;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 694
    invoke-interface {v0}, Lddx$b;->l()V

    .line 695
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 707
    return-void
.end method
