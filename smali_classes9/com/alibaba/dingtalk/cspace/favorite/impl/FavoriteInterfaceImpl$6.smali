.class final Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;
.super Ljava/lang/Object;
.source "FavoriteInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Landroid/content/Context;JLjava/lang/String;JJLcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
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

.field final synthetic c:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->b:Lcky;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->c:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    check-cast p1, Lcky;

    .line 1367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->b:Lcky;

    invoke-static {v2, v3, p1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Lcky;Lcky;)Lcky;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->c:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->a:Landroid/content/Context;

    .line 1368
    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;

    move-result-object v4

    .line 1367
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;Lcma;)V

    .line 364
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->b:Lcky;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->c:Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->d:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$6;->a:Landroid/content/Context;

    .line 379
    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;

    move-result-object v4

    .line 378
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;Lcma;)V

    .line 380
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 374
    return-void
.end method
