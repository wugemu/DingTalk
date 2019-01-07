.class final Lddy$4;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->b(J)V
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
    .line 716
    iput-object p1, p0, Lddy$4;->a:Lddy;

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
    .line 740
    iget-object v0, p0, Lddy$4;->a:Lddy;

    .line 4066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 740
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lddy$4;->a:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 741
    invoke-interface {v0}, Lddx$b;->m()V

    .line 743
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 720
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .prologue
    .line 724
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 728
    iget-object v0, p0, Lddy$4;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 728
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lddy$4;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 729
    invoke-interface {v0, p2, p3}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 735
    iget-object v0, p0, Lddy$4;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 735
    invoke-interface {v0}, Lddx$b;->l()V

    .line 736
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 748
    return-void
.end method
