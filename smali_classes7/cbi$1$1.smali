.class final Lcbi$1$1;
.super Ljava/lang/Object;
.source "UnSendRedPacketsMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbi$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcbi$1;


# direct methods
.method constructor <init>(Lcbi$1;)V
    .locals 0
    .param p1, "this$1"    # Lcbi$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcbi$1$1;->a:Lcbi$1;

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
    .line 84
    iget-object v0, p0, Lcbi$1$1;->a:Lcbi$1;

    iget-object v0, v0, Lcbi$1;->c:Lcbi;

    iget-object v1, p0, Lcbi$1$1;->a:Lcbi$1;

    iget-object v1, v1, Lcbi$1;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcbi;->a(Lcbi;Landroid/app/Activity;)V

    .line 85
    return-void
.end method
