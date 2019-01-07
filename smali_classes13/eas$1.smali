.class final Leas$1;
.super Ljava/lang/Object;
.source "GroupRingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leas;


# direct methods
.method constructor <init>(Leas;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leas;

    .prologue
    .line 97
    iput-object p1, p0, Leas$1;->b:Leas;

    iput-object p2, p0, Leas$1;->a:Ljava/lang/String;

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
    .line 100
    const-string/jumbo v0, "sp_key_group_ring"

    iget-object v1, p0, Leas$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
