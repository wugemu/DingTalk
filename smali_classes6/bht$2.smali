.class final Lbht$2;
.super Ljava/lang/Object;
.source "UserProfileEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbht;


# direct methods
.method constructor <init>(Lbht;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbht;

    .prologue
    .line 72
    iput-object p1, p0, Lbht$2;->c:Lbht;

    iput-object p2, p0, Lbht$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbht$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lbht$2;->c:Lbht;

    invoke-static {v0}, Lbht;->a(Lbht;)Lbht$a;

    move-result-object v0

    iget-object v1, p0, Lbht$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lbht$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbht$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
