.class final Latl$1;
.super Ljava/lang/Object;
.source "CalendarRequestCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latl;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Latl;


# direct methods
.method constructor <init>(Latl;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Latl;

    .prologue
    .line 45
    .local p0, "this":Latl$1;, "Latl$1;"
    iput-object p1, p0, Latl$1;->b:Latl;

    iput-object p2, p0, Latl$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Latl$1;, "Latl$1;"
    iget-object v0, p0, Latl$1;->b:Latl;

    invoke-static {v0}, Latl;->a(Latl;)Lcmi;

    move-result-object v0

    iget-object v1, p0, Latl$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcmi;->onLoadSuccess(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
