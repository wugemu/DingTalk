.class final Lcny$1;
.super Ljava/lang/Object;
.source "CallbackMainUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcny$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcny$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcny$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcny$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
