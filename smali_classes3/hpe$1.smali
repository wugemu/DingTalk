.class final Lhpe$1;
.super Ljava/lang/Object;
.source "HydroNetStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

.field final synthetic b:Lhpe;


# direct methods
.method constructor <init>(Lhpe;Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V
    .locals 0
    .param p1, "this$0"    # Lhpe;

    .prologue
    .line 350
    iput-object p1, p0, Lhpe$1;->b:Lhpe;

    iput-object p2, p0, Lhpe$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lhpe$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b()V

    .line 357
    return-void
.end method
