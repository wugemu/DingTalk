.class Lcom/alibaba/wukong/auth/bd$3;
.super Ljava/lang/Object;
.source "SyncParaTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bw:Lcom/alibaba/wukong/auth/bd;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/bd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/bd;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bd$3;->bw:Lcom/alibaba/wukong/auth/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bd$3;->bw:Lcom/alibaba/wukong/auth/bd;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/bd;->b(Lcom/alibaba/wukong/auth/bd;)V

    .line 178
    return-void
.end method
