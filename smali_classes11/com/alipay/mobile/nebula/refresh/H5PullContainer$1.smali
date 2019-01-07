.class Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;
.super Ljava/lang/Object;
.source "H5PullContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$1;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$000(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V

    .line 269
    return-void
.end method
