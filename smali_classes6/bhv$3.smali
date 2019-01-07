.class final Lbhv$3;
.super Ljava/lang/Object;
.source "UserProfileListFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbhv;

    .prologue
    .line 113
    iput-object p1, p0, Lbhv$3;->c:Lbhv;

    iput-object p2, p0, Lbhv$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lbhv$3;->b:Ljava/lang/String;

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
    .line 116
    iget-object v0, p0, Lbhv$3;->c:Lbhv;

    .line 1018
    iget-object v0, v0, Lbhv;->b:Lbhv$a;

    .line 116
    iget-object v1, p0, Lbhv$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lbhv$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbhv$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
