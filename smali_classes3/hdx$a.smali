.class final Lhdx$a;
.super Lhdj;
.source "DrawerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhdx;


# direct methods
.method public constructor <init>(Lhdx;Lcom/alibaba/lightapp/runtime/INuvaContext;)V
    .locals 0
    .param p1, "this$0"    # Lhdx;
    .param p2, "context"    # Lcom/alibaba/lightapp/runtime/INuvaContext;

    .prologue
    .line 413
    iput-object p1, p0, Lhdx$a;->a:Lhdx;

    .line 414
    invoke-direct {p0, p2}, Lhdj;-><init>(Lcom/alibaba/lightapp/runtime/INuvaContext;)V

    .line 415
    return-void
.end method


# virtual methods
.method public final provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdx$a;->a:Lhdx;

    .line 1034
    iget-object v0, v0, Lhdx;->h:Lhht;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lhdx$a;->a:Lhdx;

    .line 2034
    iget-object v0, v0, Lhdx;->h:Lhht;

    .line 423
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lhdj;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    goto :goto_0
.end method
