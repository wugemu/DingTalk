.class final Lckm$a$2;
.super Ljava/lang/Object;
.source "ObservedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckm$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lckm;

.field final synthetic b:Lckm$a;


# direct methods
.method constructor <init>(Lckm$a;Lckm;)V
    .locals 0
    .param p1, "this$0"    # Lckm$a;

    .prologue
    .line 80
    .local p0, "this":Lckm$a$2;, "Lckm$a$2;"
    iput-object p1, p0, Lckm$a$2;->b:Lckm$a;

    iput-object p2, p0, Lckm$a$2;->a:Lckm;

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
    .line 83
    .local p0, "this":Lckm$a$2;, "Lckm$a$2;"
    iget-object v0, p0, Lckm$a$2;->b:Lckm$a;

    invoke-static {v0}, Lckm$a;->a(Lckm$a;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lckm$a$2;->b:Lckm$a;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lckm$a;->a(Lckm$a;Ljava/util/Set;)Ljava/util/Set;

    .line 87
    :cond_0
    iget-object v0, p0, Lckm$a$2;->b:Lckm$a;

    invoke-static {v0}, Lckm$a;->a(Lckm$a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lckm$a$2;->a:Lckm;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
