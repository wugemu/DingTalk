.class final Lewh$7$1;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lewh$7;


# direct methods
.method constructor <init>(Lewh$7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lewh$7;

    .prologue
    .line 937
    iput-object p1, p0, Lewh$7$1;->c:Lewh$7;

    iput-object p2, p0, Lewh$7$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lewh$7$1;->b:Ljava/lang/String;

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
    .line 940
    iget-object v0, p0, Lewh$7$1;->c:Lewh$7;

    iget-object v0, v0, Lewh$7;->b:Lewh$b;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lewh$7$1;->c:Lewh$7;

    iget-object v0, v0, Lewh$7;->b:Lewh$b;

    iget-object v1, p0, Lewh$7$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lewh$7$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lewh$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_0
    return-void
.end method
