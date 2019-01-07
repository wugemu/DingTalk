.class final Lhu$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhu;


# direct methods
.method constructor <init>(Lhu;)V
    .locals 0
    .param p1, "this$0"    # Lhu;

    .prologue
    .line 334
    iput-object p1, p0, Lhu$2;->a:Lhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 337
    iget-object v0, p0, Lhu$2;->a:Lhu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhu;->b(I)V

    .line 338
    return-void
.end method
