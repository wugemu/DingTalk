.class final Lbnv$7;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
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

.field final synthetic b:Lcov;

.field final synthetic c:Lbnv;


# direct methods
.method constructor <init>(Lbnv;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 654
    iput-object p1, p0, Lbnv$7;->c:Lbnv;

    iput-object p2, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object p3, p0, Lbnv$7;->b:Lcov;

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
    .line 654
    .line 1657
    iget-object v0, p0, Lbnv$7;->c:Lbnv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbnv;->a(Lbnv;Z)Z

    .line 1658
    iget-object v0, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {v0}, Lbnv;->d(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 1662
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    iget-object v1, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v2, v3}, Lbnw;->c(J)V

    .line 1664
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "circle_on_post_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    const-string/jumbo v1, "circle_on_post_changed"

    iget-object v2, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1666
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1668
    iget-object v0, p0, Lbnv$7;->b:Lcov;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lbnv$7;->b:Lcov;

    iget-object v1, p0, Lbnv$7;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 654
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 675
    iget-object v0, p0, Lbnv$7;->c:Lbnv;

    invoke-static {v0, v4}, Lbnv;->a(Lbnv;Z)Z

    .line 676
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CircleTag"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "unLike "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 683
    return-void
.end method
