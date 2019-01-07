.class final Leci$9;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leci;


# direct methods
.method constructor <init>(Leci;)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 403
    iput-object p1, p0, Leci$9;->a:Leci;

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
    .line 406
    iget-object v0, p0, Leci$9;->a:Leci;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leci;->a(Leci;I)V

    .line 407
    return-void
.end method
