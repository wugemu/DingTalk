.class final Latm$1;
.super Ljava/lang/Object;
.source "HolidayRequestCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latm;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Latm;


# direct methods
.method constructor <init>(Latm;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Latm;

    .prologue
    .line 41
    .local p0, "this":Latm$1;, "Latm$1;"
    iput-object p1, p0, Latm$1;->b:Latm;

    iput-object p2, p0, Latm$1;->a:Ljava/lang/Object;

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
    .line 44
    .local p0, "this":Latm$1;, "Latm$1;"
    iget-object v0, p0, Latm$1;->b:Latm;

    invoke-static {v0}, Latm;->a(Latm;)Lcmi;

    move-result-object v0

    iget-object v1, p0, Latm$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcmi;->onLoadSuccess(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
