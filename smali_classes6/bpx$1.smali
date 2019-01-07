.class final Lbpx$1;
.super Ljava/lang/Object;
.source "LoadPersonalModel.java"

# interfaces
.implements Lcou;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbpx;


# direct methods
.method constructor <init>(Lbpx;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbpx;

    .prologue
    .line 64
    iput-object p1, p0, Lbpx$1;->b:Lbpx;

    iput-object p2, p0, Lbpx$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v0

    iget-object v1, p0, Lbpx$1;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpb;->b(Ljava/util/Collection;)I

    .line 69
    return-void
.end method
