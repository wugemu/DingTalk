.class final Lbbo$30;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3320
    iput-object p1, p0, Lbbo$30;->c:Lbbo;

    iput-object p2, p0, Lbbo$30;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lbbo$30;->b:Ljava/lang/Object;

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
    .line 3323
    iget-object v0, p0, Lbbo$30;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lbbo$30;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 3324
    return-void
.end method
