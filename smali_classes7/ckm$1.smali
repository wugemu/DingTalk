.class final Lckm$1;
.super Ljava/lang/Object;
.source "ObservedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lckm;->b(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckm$a;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lckm;


# direct methods
.method constructor <init>(Lckm;Lckm$a;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lckm;

    .prologue
    .line 249
    .local p0, "this":Lckm$1;, "Lckm$1;"
    iput-object p1, p0, Lckm$1;->c:Lckm;

    iput-object p2, p0, Lckm$1;->a:Lckm$a;

    iput-object p3, p0, Lckm$1;->b:Ljava/lang/Object;

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
    .line 252
    .local p0, "this":Lckm$1;, "Lckm$1;"
    iget-object v0, p0, Lckm$1;->a:Lckm$a;

    iget-object v1, p0, Lckm$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lckm$a;->a(Ljava/lang/Object;)V

    .line 253
    return-void
.end method
