.class final Lbbx$1;
.super Ljava/lang/Object;
.source "RequestCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbx;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbbx;


# direct methods
.method constructor <init>(Lbbx;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lbbx;

    .prologue
    .line 40
    .local p0, "this":Lbbx$1;, "Lbbx$1;"
    iput-object p1, p0, Lbbx$1;->b:Lbbx;

    iput-object p2, p0, Lbbx$1;->a:Ljava/lang/Object;

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
    .line 43
    .local p0, "this":Lbbx$1;, "Lbbx$1;"
    iget-object v0, p0, Lbbx$1;->b:Lbbx;

    invoke-static {v0}, Lbbx;->a(Lbbx;)Lcmi;

    move-result-object v0

    iget-object v1, p0, Lbbx$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcmi;->onLoadSuccess(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
