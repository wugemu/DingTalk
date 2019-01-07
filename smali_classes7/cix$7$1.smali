.class final Lcix$7$1;
.super Ljava/lang/Object;
.source "DDServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcix$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcix$7;


# direct methods
.method constructor <init>(Lcix$7;)V
    .locals 0
    .param p1, "this$0"    # Lcix$7;

    .prologue
    .line 420
    iput-object p1, p0, Lcix$7$1;->a:Lcix$7;

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
    .line 423
    invoke-static {}, Lcix;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const-string/jumbo v0, "failed to start remote service after retried"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lciz;->a(Ljava/lang/String;Z)V

    .line 426
    :cond_0
    return-void
.end method
