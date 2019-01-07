.class final Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/utils/SerializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->runOnNonUiThread(Lcom/alibaba/doraemon/utils/SerializeCallback;)Lcom/alibaba/doraemon/utils/SerializeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/SerializeCallback;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;->val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 225
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$1;-><init>(Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->runOnNonUiThread(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public final onFailed()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2$2;-><init>(Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->runOnNonUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method
