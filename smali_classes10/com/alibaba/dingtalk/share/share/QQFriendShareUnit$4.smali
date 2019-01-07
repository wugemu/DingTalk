.class final Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;
.super Ljava/lang/Object;
.source "QQFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;

.field final synthetic c:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Landroid/graphics/Bitmap;Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->c:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->c:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "savedPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$4;->b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;

    invoke-interface {v1, v0}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;->a(Ljava/lang/String;)V

    .line 199
    return-void
.end method
