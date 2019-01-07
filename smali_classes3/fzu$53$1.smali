.class final Lfzu$53$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu$53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfzu$53;


# direct methods
.method constructor <init>(Lfzu$53;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$53;

    .prologue
    .line 547
    iput-object p1, p0, Lfzu$53$1;->b:Lfzu$53;

    iput-object p2, p0, Lfzu$53$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 547
    check-cast p1, Ljava/lang/Boolean;

    .line 1550
    iget-object v0, p0, Lfzu$53$1;->b:Lfzu$53;

    iget-object v1, p0, Lfzu$53$1;->a:Ljava/lang/String;

    .line 2022
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1550
    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lfzu$53;->a(Lfzu$53;Ljava/lang/String;ZZI)V

    .line 547
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 559
    iget-object v0, p0, Lfzu$53$1;->b:Lfzu$53;

    iget-object v1, p0, Lfzu$53$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lfzu$53;->a(Lfzu$53;Ljava/lang/String;ZZI)V

    .line 560
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 555
    return-void
.end method
