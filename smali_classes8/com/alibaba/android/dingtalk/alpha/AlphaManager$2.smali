.class final Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;
.super Ljava/lang/Object;
.source "AlphaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/AlphaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 119
    const-string/jumbo v0, "AlphaManager"

    const-string/jumbo v1, "execute alone task"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->a(Lcom/alibaba/android/dingtalk/alpha/AlphaManager;)Lblq;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lblq;->onError(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaManager$2;->a:Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 122
    return-void
.end method
