.class final Lfaq$23;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq;->a(Ljava/lang/String;Lcee;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcee;

.field final synthetic c:Lfaq;


# direct methods
.method constructor <init>(Lfaq;Lcma;Lcee;)V
    .locals 0
    .param p1, "this$0"    # Lfaq;

    .prologue
    .line 248
    iput-object p1, p0, Lfaq$23;->c:Lfaq;

    iput-object p2, p0, Lfaq$23;->a:Lcma;

    iput-object p3, p0, Lfaq$23;->b:Lcee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lfaq$23;->a:Lcma;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lfaq$23;->a:Lcma;

    const-string/jumbo v1, "11044"

    iget-object v2, p0, Lfaq$23;->b:Lcee;

    iget-object v2, v2, Lcee;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
