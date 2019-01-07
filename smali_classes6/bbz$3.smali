.class public final Lbbz$3;
.super Ljava/lang/Object;
.source "CommentDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lbbz;


# direct methods
.method public constructor <init>(Lbbz;JJLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbz;

    .prologue
    .line 69
    iput-object p1, p0, Lbbz$3;->d:Lbbz;

    iput-wide p2, p0, Lbbz$3;->a:J

    iput-wide p4, p0, Lbbz$3;->b:J

    iput-object p6, p0, Lbbz$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lbbz$3;->d:Lbbz;

    invoke-static {v0}, Lbbz;->a(Lbbz;)Lbby;

    move-result-object v0

    iget-wide v2, p0, Lbbz$3;->a:J

    iget-wide v4, p0, Lbbz$3;->b:J

    iget-object v1, p0, Lbbz$3;->c:Lcma;

    .line 1112
    iget-object v7, v0, Lbby;->a:Lbca;

    new-instance v6, Lbby$3;

    invoke-direct {v6, v0, v1}, Lbby$3;-><init>(Lbby;Lcma;)V

    .line 1128
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "invalidate dingId"

    invoke-interface {v6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v0, "removeDingComment failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :goto_0
    return-void

    .line 1135
    :cond_0
    new-instance v0, Lbca$6;

    invoke-direct {v0, v7, v6}, Lbca$6;-><init>(Lbca;Lcma;)V

    .line 1151
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 1152
    new-instance v6, Lbca$7;

    invoke-direct {v6, v7, v0}, Lbca$7;-><init>(Lbca;Lcmi;)V

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->removeDingComment(JJLiyv;)V

    goto :goto_0
.end method
