.class final Lflo$1$1;
.super Ljava/lang/Object;
.source "AvatarUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflo$1;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/request/Response;

.field final synthetic b:Lflo$1;


# direct methods
.method constructor <init>(Lflo$1;Lcom/alibaba/doraemon/request/Response;)V
    .locals 0
    .param p1, "this$0"    # Lflo$1;

    .prologue
    .line 64
    iput-object p1, p0, Lflo$1$1;->b:Lflo$1;

    iput-object p2, p0, Lflo$1$1;->a:Lcom/alibaba/doraemon/request/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lflo$1$1;->a:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method
