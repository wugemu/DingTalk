.class final Lebs$3;
.super Ljava/lang/Object;
.source "BaseVideoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebs;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lebs;


# direct methods
.method constructor <init>(Lebs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lebs;

    .prologue
    .line 121
    iput-object p1, p0, Lebs$3;->c:Lebs;

    iput-object p2, p0, Lebs$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lebs$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lebs$3;->c:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lebs$3;->c:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    iget-object v1, p0, Lebs$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lebs$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lebs$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method