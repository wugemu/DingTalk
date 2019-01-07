.class public final Lbqf;
.super Ljava/lang/Object;
.source "ShieldModel.java"

# interfaces
.implements Lbqc;


# instance fields
.field private a:Lbou;

.field private b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v0

    iput-object v0, p0, Lbqf;->a:Lbou;

    .line 27
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->firstParam(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    move-result-object v0

    iput-object v0, p0, Lbqf;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lbqf;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    return-wide v0
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "cursor <= 0"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lbqf;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    iput-wide p1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 101
    iget-object v0, p0, Lbqf;->a:Lbou;

    iget-object v1, p0, Lbqf;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-interface {v0, v1, p3}, Lbou;->c(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V

    .line 102
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 37
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 41
    .local v0, "postId":J
    iget-object v2, p0, Lbqf;->a:Lbou;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lbqf$1;

    invoke-direct {v4, p0, v0, v1, p2}, Lbqf$1;-><init>(Lbqf;JLcma;)V

    invoke-interface {v2, v3, v4}, Lbou;->e(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 72
    .local v0, "postId":J
    iget-object v2, p0, Lbqf;->a:Lbou;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lbqf$2;

    invoke-direct {v4, p0, p1, p2}, Lbqf$2;-><init>(Lbqf;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcma;)V

    invoke-interface {v2, v3, v4}, Lbou;->f(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method
