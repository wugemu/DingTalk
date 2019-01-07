.class final Lfeu$2$1;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeu$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

.field final synthetic b:Lfeu$2;


# direct methods
.method constructor <init>(Lfeu$2;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V
    .locals 0
    .param p1, "this$1"    # Lfeu$2;

    .prologue
    .line 180
    iput-object p1, p0, Lfeu$2$1;->b:Lfeu$2;

    iput-object p2, p0, Lfeu$2$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lfeu$2$1;->b:Lfeu$2;

    iget-object v0, v0, Lfeu$2;->b:Lfeu;

    invoke-static {v0}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v0

    iget-object v1, p0, Lfeu$2$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 184
    return-void
.end method
