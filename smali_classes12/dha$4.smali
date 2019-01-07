.class final Ldha$4;
.super Ljava/lang/Object;
.source "CooperationGroupAddMemberHelper.java"

# interfaces
.implements Lech$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldqz;

.field final synthetic c:Ldha;


# direct methods
.method constructor <init>(Ldha;Ljava/util/List;Ldqz;)V
    .locals 0
    .param p1, "this$0"    # Ldha;

    .prologue
    .line 191
    iput-object p1, p0, Ldha$4;->c:Ldha;

    iput-object p2, p0, Ldha$4;->a:Ljava/util/List;

    iput-object p3, p0, Ldha$4;->b:Ldqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Ldha$4;->a:Ljava/util/List;

    iget-object v1, p0, Ldha$4;->b:Ldqz;

    iget-object v1, v1, Ldqz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v0, p0, Ldha$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Ldha$4;->b:Ldqz;

    iget-object v0, v0, Ldqz;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldha$4;->b:Ldqz;

    iget-object v0, v0, Ldqz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Ldha$4;->c:Ldha;

    iget-object v1, p0, Ldha$4;->b:Ldqz;

    iget-object v2, p0, Ldha$4;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ldha;->a(Ldha;Ldqz;Ljava/util/List;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Ldha$4;->c:Ldha;

    iget-object v1, p0, Ldha$4;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldha;->a(Ldha;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
