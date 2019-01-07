.class public final Larn$3;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapv;

.field final synthetic b:Larn;


# direct methods
.method public constructor <init>(Larn;Lapv;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 585
    iput-object p1, p0, Larn$3;->b:Larn;

    iput-object p2, p0, Larn$3;->a:Lapv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 593
    iget-object v0, p0, Larn$3;->a:Lapv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 585
    .line 1588
    iget-object v0, p0, Larn$3;->a:Lapv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lapv;->a(Ljava/lang/Object;)V

    .line 585
    return-void
.end method
