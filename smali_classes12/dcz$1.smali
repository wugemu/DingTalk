.class final Ldcz$1;
.super Liak;
.source "CategoryContainSessionsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldcz;


# direct methods
.method constructor <init>(Ldcz;)V
    .locals 0
    .param p1, "this$0"    # Ldcz;

    .prologue
    .line 56
    iput-object p1, p0, Ldcz$1;->a:Ldcz;

    invoke-direct {p0}, Liak;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 4
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldcz$1;->a:Ldcz;

    .line 1027
    iget-object v0, v0, Ldcz;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 59
    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-object v2, p0, Ldcz$1;->a:Ldcz;

    .line 2027
    iget-object v2, v2, Ldcz;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 59
    iget-wide v2, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Ldcz$1;->a:Ldcz;

    .line 3027
    iget-object v0, v0, Ldcz;->b:Ldcy$b;

    .line 60
    invoke-interface {v0}, Ldcy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ldcz$1;->a:Ldcz;

    .line 4027
    iget-object v0, v0, Ldcz;->b:Ldcy$b;

    .line 61
    invoke-interface {v0}, Ldcy$b;->a()V

    .line 64
    :cond_0
    return-void
.end method
