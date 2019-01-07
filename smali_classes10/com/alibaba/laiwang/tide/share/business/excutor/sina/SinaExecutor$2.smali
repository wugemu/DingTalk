.class Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;
.super Ljava/lang/Object;
.source "SinaExecutor.java"

# interfaces
.implements Ljhe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;->doShare(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

.field final synthetic val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->this$0:Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor;

    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-interface {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onSuccess()V

    .line 162
    :cond_0
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .param p1, "arg0"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaExecutor$2;->val$listener:Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;->onException(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
