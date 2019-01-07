.class final Lewv$3$4;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv$3;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv$3;


# direct methods
.method constructor <init>(Lewv$3;)V
    .locals 0
    .param p1, "this$1"    # Lewv$3;

    .prologue
    .line 286
    iput-object p1, p0, Lewv$3$4;->a:Lewv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lewv$3$4;->a:Lewv$3;

    iget-object v0, v0, Lewv$3;->a:Lewv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewv;->a(Lewv;Z)V

    .line 290
    return-void
.end method
