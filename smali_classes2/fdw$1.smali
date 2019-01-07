.class public final Lfdw$1;
.super Ljava/lang/Object;
.source "CirclePostObjetDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lfdo;

.field final synthetic c:Lfdw;


# direct methods
.method public constructor <init>(Lfdw;[Ljava/lang/String;Lfdo;)V
    .locals 0
    .param p1, "this$0"    # Lfdw;

    .prologue
    .line 33
    iput-object p1, p0, Lfdw$1;->c:Lfdw;

    iput-object p2, p0, Lfdw$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lfdw$1;->b:Lfdo;

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
    .line 36
    iget-object v0, p0, Lfdw$1;->c:Lfdw;

    sget-object v1, Lfdw$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lfdw$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfdw;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lfdw$1;->b:Lfdo;

    iget-object v1, p0, Lfdw$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfdo;->release(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
