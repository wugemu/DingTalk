.class final Lfbg$10;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lfbg;


# direct methods
.method constructor <init>(Lfbg;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 456
    iput-object p1, p0, Lfbg$10;->c:Lfbg;

    iput-object p2, p0, Lfbg$10;->a:Lcma;

    iput-object p3, p0, Lfbg$10;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 459
    iget-object v0, p0, Lfbg$10;->a:Lcma;

    iget-object v1, p0, Lfbg$10;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 460
    return-void
.end method
