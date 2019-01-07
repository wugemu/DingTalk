.class final Lma$1;
.super Ljava/lang/Object;
.source "ParcelableNetworkListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma;->a(BLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lma;


# direct methods
.method constructor <init>(Lma;BLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lma$1;->c:Lma;

    iput-byte p2, p0, Lma$1;->a:B

    iput-object p3, p0, Lma$1;->b:Ljava/lang/Object;

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
    .line 59
    iget-object v0, p0, Lma$1;->c:Lma;

    iget-byte v1, p0, Lma$1;->a:B

    iget-object v2, p0, Lma$1;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lma;->a(Lma;BLjava/lang/Object;)V

    .line 60
    return-void
.end method
