.class final Lddy$6;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(Lcom/alibaba/wukong/im/Message;)V
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
    .line 798
    iput-object p1, p0, Lddy$6;->a:Lddy;

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
    .line 826
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 827
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 4066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 827
    invoke-interface {v0}, Lddx$b;->m()V

    .line 828
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 828
    invoke-interface {v0, p2}, Lddx$b;->a(I)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 830
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 6066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 830
    invoke-interface {v0}, Lddx$b;->m()V

    .line 831
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 7066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 831
    invoke-interface {v0, p2}, Lddx$b;->a(I)V

    goto :goto_0

    .line 833
    :cond_2
    if-nez p1, :cond_0

    .line 834
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 8066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 834
    invoke-interface {v0}, Lddx$b;->m()V

    .line 835
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 9066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 835
    invoke-interface {v0, p2}, Lddx$b;->a(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 802
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .prologue
    .line 806
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 810
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 810
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 811
    invoke-interface {v0, p2, p3}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 818
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 819
    :cond_0
    iget-object v0, p0, Lddy$6;->a:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 819
    invoke-interface {v0}, Lddx$b;->l()V

    .line 821
    :cond_1
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 842
    return-void
.end method
