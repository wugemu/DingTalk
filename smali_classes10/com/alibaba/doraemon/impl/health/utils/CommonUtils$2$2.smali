.class Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$2;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;->onFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$2;->this$0:Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$2;->this$0:Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;->val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;

    invoke-interface {v0}, Lcom/alibaba/doraemon/utils/SerializeCallback;->onFailed()V

    .line 239
    return-void
.end method
