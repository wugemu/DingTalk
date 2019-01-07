.class public final Lffb;
.super Ljava/lang/Object;
.source "ShieldModel.java"

# interfaces
.implements Lfey;


# instance fields
.field private a:Lfdj;

.field private b:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lfdl;->a()Lfdl;

    move-result-object v0

    iput-object v0, p0, Lffb;->a:Lfdj;

    .line 26
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->firstParam(J)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    move-result-object v0

    iput-object v0, p0, Lffb;->b:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lffb;->b:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

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
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, "callback":Lcma;, "Lcma<Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "cursor <= 0"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lffb;->b:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iput-wide p1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 100
    iget-object v0, p0, Lffb;->a:Lfdj;

    iget-object v1, p0, Lffb;->b:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    invoke-interface {v0, v1, p3}, Lfdj;->a(Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lcma;)V

    .line 101
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 36
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 40
    .local v0, "postId":J
    iget-object v2, p0, Lffb;->a:Lfdj;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lffb$1;

    invoke-direct {v4, p0, v0, v1, p2}, Lffb$1;-><init>(Lffb;JLcma;)V

    invoke-interface {v2, v3, v4}, Lfdj;->a(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V
    .locals 6
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 67
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 71
    .local v0, "postId":J
    iget-object v2, p0, Lffb;->a:Lfdj;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lffb$2;

    invoke-direct {v4, p0, p1, p2}, Lffb$2;-><init>(Lffb;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcma;)V

    invoke-interface {v2, v3, v4}, Lfdj;->b(Ljava/lang/Long;Lcma;)V

    goto :goto_0
.end method
