.class final Lcom/alibaba/android/rimet/utils/UrlUtils$11;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/app/Activity;JLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->b:J

    iput-object p4, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->c:Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1253
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->b:J

    iget-object v6, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->c:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->d:I

    invoke-virtual/range {v1 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;I)V

    .line 1255
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1244
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1244
    move-object v3, p1

    check-cast v3, Lcom/alibaba/wukong/im/Conversation;

    .line 2247
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->b:J

    iget-object v6, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->c:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$11;->d:I

    invoke-virtual/range {v1 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;I)V

    .line 1244
    return-void
.end method
