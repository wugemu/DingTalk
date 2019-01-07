.class final Lddy$10;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lddy;


# direct methods
.method constructor <init>(Lddy;ILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 978
    iput-object p1, p0, Lddy$10;->c:Lddy;

    iput p2, p0, Lddy$10;->a:I

    iput-object p3, p0, Lddy$10;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1004
    iget-object v0, p0, Lddy$10;->c:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 1004
    iget-object v1, p0, Lddy$10;->b:Lcom/alibaba/wukong/im/Message;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lddx$b;->a(Lcom/alibaba/wukong/im/Message;IZ)V

    .line 1005
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 981
    iget-object v0, p0, Lddy$10;->c:Lddy;

    invoke-static {v0}, Lddy;->b(Lddy;)V

    .line 982
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 986
    iget v0, p0, Lddy$10;->a:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 987
    iget-object v0, p0, Lddy$10;->c:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 987
    iget-object v1, p0, Lddy$10;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lddx$b;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 989
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 993
    iget-object v0, p0, Lddy$10;->c:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 993
    invoke-interface {v0, p2, p3}, Lddx$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 999
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1010
    return-void
.end method
