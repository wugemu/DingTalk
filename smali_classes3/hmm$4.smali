.class public final Lhmm$4;
.super Ljava/lang/Object;
.source "MiniAppOpenTypeSPLocalDataAccessor.java"

# interfaces
.implements Lhmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

.field final synthetic b:Lhmm;


# direct methods
.method public constructor <init>(Lhmm;Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V
    .locals 0
    .param p1, "this$0"    # Lhmm;

    .prologue
    .line 150
    iput-object p1, p0, Lhmm$4;->b:Lhmm;

    iput-object p2, p0, Lhmm$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 153
    .local p1, "miniAppOpenTypeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;>;"
    iget-object v0, p0, Lhmm$4;->b:Lhmm;

    iget-object v1, p0, Lhmm$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    .line 1030
    invoke-virtual {v0, v1, p1}, Lhmm;->a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;Ljava/util/List;)V

    .line 154
    return-void
.end method
