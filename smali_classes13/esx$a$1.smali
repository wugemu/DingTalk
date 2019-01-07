.class final Lesx$a$1;
.super Ljava/lang/Object;
.source "FunctionOpenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesx$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lesx$a;


# direct methods
.method constructor <init>(Lesx$a;)V
    .locals 0
    .param p1, "this$0"    # Lesx$a;

    .prologue
    .line 568
    iput-object p1, p0, Lesx$a$1;->a:Lesx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    iget-object v0, p0, Lesx$a$1;->a:Lesx$a;

    .line 1560
    const/4 v1, 0x0

    iput-boolean v1, v0, Lesx$a;->a:Z

    .line 572
    return-void
.end method
