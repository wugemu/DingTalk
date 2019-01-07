.class final Lbby$3;
.super Ljava/lang/Object;
.source "CommentDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbby;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbby;


# direct methods
.method constructor <init>(Lbby;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbby;

    .prologue
    .line 112
    iput-object p1, p0, Lbby$3;->b:Lbby;

    iput-object p2, p0, Lbby$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 112
    .line 1115
    iget-object v0, p0, Lbby$3;->a:Lcma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lbby$3;->a:Lcma;

    invoke-static {v0, p1, p2}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 120
    return-void
.end method
