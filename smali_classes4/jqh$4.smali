.class final Ljqh$4;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljqh;


# direct methods
.method constructor <init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljqh;

    .prologue
    .line 803
    iput-object p1, p0, Ljqh$4;->d:Ljqh;

    iput-object p2, p0, Ljqh$4;->a:Ljqh$b;

    iput-object p3, p0, Ljqh$4;->b:Ljava/lang/String;

    iput-object p4, p0, Ljqh$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 806
    iget-object v0, p0, Ljqh$4;->a:Ljqh$b;

    iget-object v1, p0, Ljqh$4;->b:Ljava/lang/String;

    iget-object v2, p0, Ljqh$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljqh$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method
