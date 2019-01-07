.class final Lbpw$2$1;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpw$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

.field final synthetic b:Lbpw$2;


# direct methods
.method constructor <init>(Lbpw$2;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V
    .locals 0
    .param p1, "this$1"    # Lbpw$2;

    .prologue
    .line 182
    iput-object p1, p0, Lbpw$2$1;->b:Lbpw$2;

    iput-object p2, p0, Lbpw$2$1;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lbpw$2$1;->b:Lbpw$2;

    iget-object v0, v0, Lbpw$2;->b:Lbpw;

    invoke-static {v0}, Lbpw;->c(Lbpw;)Lcma;

    move-result-object v0

    iget-object v1, p0, Lbpw$2$1;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
