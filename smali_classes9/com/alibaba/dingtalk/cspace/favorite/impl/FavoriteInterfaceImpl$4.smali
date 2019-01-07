.class final Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;
.super Ljava/lang/Object;
.source "FavoriteInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
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
        "Lcky;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcky;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;ZLjava/lang/String;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->b:Lcky;

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->c:Z

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 272
    check-cast p1, Lcky;

    .line 1275
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->b:Lcky;

    invoke-static {v3, v4, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Lcky;)Lcky;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->c:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    :goto_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->c:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->d:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    if-ne v0, v10, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V

    .line 272
    return-void

    .line 1275
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 285
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->b:Lcky;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->c:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    :goto_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->c:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->d:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->orientation:I

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->e:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    if-ne v0, v10, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->f:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V

    .line 286
    return-void

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$4;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 281
    return-void
.end method
