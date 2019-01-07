.class final Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;
.super Ljava/lang/Object;
.source "QQFriendShareUnit.java"

# interfaces
.implements Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;->b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;->a:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    iput-object p1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->c:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit$2;->b:Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;->a(Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;Ljava/lang/String;)V

    .line 141
    return-void
.end method
