.class final Ldfk$2;
.super Ljava/lang/Object;
.source "SvcGrpPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcov;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcov;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcov;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Ldfk$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldfk$2;->b:Lcov;

    iput-wide p3, p0, Ldfk$2;->c:J

    iput-object p5, p0, Ldfk$2;->d:Ljava/lang/String;

    iput-object p6, p0, Ldfk$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    .line 1282
    iget-object v0, p0, Ldfk$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldfk;->a(Landroid/app/Activity;)V

    .line 1285
    iget-object v0, p0, Ldfk$2;->b:Lcov;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Ldfk$2;->b:Lcov;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 1288
    :cond_0
    sget v0, Lctk$i;->and_feedback_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 279
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    iget-object v0, p0, Ldfk$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldfk;->a(Landroid/app/Activity;)V

    .line 299
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "doActionMsg failed, msgId = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Ldfk$2;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", cid = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ldfk$2;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", actionType = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ldfk$2;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", errorCode = "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ", errorMsg = "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldfk;->a(Ljava/lang/String;)V

    .line 300
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 294
    return-void
.end method
