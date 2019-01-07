.class final Lbpz$4$1;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpz$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lbpz$4;


# direct methods
.method constructor <init>(Lbpz$4;Ljava/util/List;II)V
    .locals 0
    .param p1, "this$1"    # Lbpz$4;

    .prologue
    .line 170
    iput-object p1, p0, Lbpz$4$1;->d:Lbpz$4;

    iput-object p2, p0, Lbpz$4$1;->a:Ljava/util/List;

    iput p3, p0, Lbpz$4$1;->b:I

    iput p4, p0, Lbpz$4$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 173
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;-><init>()V

    .line 174
    .local v0, "resultObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    iget-object v1, p0, Lbpz$4$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->setPosts(Ljava/util/List;)V

    .line 175
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->setHasMore(Z)V

    .line 176
    iget-object v1, p0, Lbpz$4$1;->d:Lbpz$4;

    iget-object v1, v1, Lbpz$4;->a:Lbpz;

    iget-object v1, v1, Lbpz;->c:Lbpv;

    iget v2, p0, Lbpz$4$1;->b:I

    iget v3, p0, Lbpz$4$1;->c:I

    invoke-interface {v1, v0, v2, v3, v4}, Lbpv;->a(Ljava/lang/Object;IIZ)V

    .line 179
    iget v1, p0, Lbpz$4$1;->b:I

    if-gt v1, v4, :cond_0

    .line 180
    iget-object v1, p0, Lbpz$4$1;->d:Lbpz$4;

    iget-object v1, v1, Lbpz$4;->a:Lbpz;

    iget-object v1, v1, Lbpz;->b:Lbpw;

    invoke-virtual {v1}, Lbpw;->c()V

    .line 181
    iget-object v1, p0, Lbpz$4$1;->d:Lbpz$4;

    iget-object v1, v1, Lbpz$4;->a:Lbpz;

    invoke-static {v1}, Lbpz;->a(Lbpz;)V

    .line 183
    :cond_0
    return-void
.end method
