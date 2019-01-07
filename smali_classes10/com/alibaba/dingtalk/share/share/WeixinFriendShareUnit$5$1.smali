.class final Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$1;
.super Ljava/lang/Object;
.source "WeixinFriendShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5$1;->a:Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 302
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 303
    return-void
.end method
