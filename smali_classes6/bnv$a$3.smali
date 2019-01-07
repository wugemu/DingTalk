.class final Lbnv$a$3;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnv$a;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field final synthetic b:J

.field final synthetic c:Lbnv$a;


# direct methods
.method constructor <init>(Lbnv$a;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;J)V
    .locals 1
    .param p1, "this$1"    # Lbnv$a;

    .prologue
    .line 1515
    iput-object p1, p0, Lbnv$a$3;->c:Lbnv$a;

    iput-object p2, p0, Lbnv$a$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-wide p3, p0, Lbnv$a$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1515
    .line 2518
    iget-object v0, p0, Lbnv$a$3;->c:Lbnv$a;

    iget-object v0, v0, Lbnv$a;->b:Lbnv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbnv;->b(Lbnv;Z)Z

    .line 2519
    iget-object v0, p0, Lbnv$a$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-object v1, p0, Lbnv$a$3;->c:Lbnv$a;

    iget-object v1, v1, Lbnv$a;->b:Lbnv;

    iget-object v1, v1, Lbnv;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lbnv$a$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->onRemoveComment(Landroid/app/Activity;J)V

    .line 2521
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2522
    const-string/jumbo v1, "circle_on_post_changed"

    iget-object v2, p0, Lbnv$a$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2523
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1515
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1533
    iget-object v0, p0, Lbnv$a$3;->c:Lbnv$a;

    iget-object v0, v0, Lbnv$a;->b:Lbnv;

    invoke-static {v0, v2}, Lbnv;->b(Lbnv;Z)Z

    .line 1534
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "deleteComment error code = "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",exception = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    .line 1536
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1529
    return-void
.end method
