.class final Lawg$1;
.super Ljava/lang/Object;
.source "SingleCallbackMainUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawg;->a(Lapv;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lapv;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lawg$1;->a:Lapv;

    iput-object p2, p0, Lawg$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 18
    iget-object v0, p0, Lawg$1;->a:Lapv;

    iget-object v1, p0, Lawg$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 19
    return-void
.end method
