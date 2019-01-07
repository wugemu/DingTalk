.class final Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;
.super Ljava/lang/Object;
.source "DingDingFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

.field final synthetic c:Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Landroid/graphics/Bitmap;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->b:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "picPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->c:Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit$1;->b:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {v1, v2, v0}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;Ljava/lang/String;)V

    .line 109
    return-void
.end method
