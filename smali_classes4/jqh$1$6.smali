.class final Ljqh$1$6;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljqh$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqi;

.field final synthetic b:Ljqh$1;


# direct methods
.method constructor <init>(Ljqh$1;Ljqi;)V
    .locals 0
    .param p1, "this$1"    # Ljqh$1;

    .prologue
    .line 724
    iput-object p1, p0, Ljqh$1$6;->b:Ljqh$1;

    iput-object p2, p0, Ljqh$1$6;->a:Ljqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 727
    iget-object v0, p0, Ljqh$1$6;->b:Ljqh$1;

    iget-object v0, v0, Ljqh$1;->b:Ljqh$b;

    iget-object v1, p0, Ljqh$1$6;->a:Ljqi;

    invoke-interface {v0, v1}, Ljqh$b;->a(Ljqi;)V

    .line 728
    return-void
.end method
