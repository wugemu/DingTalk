.class public final Larl$6;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Larl;


# direct methods
.method public constructor <init>(Larl;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 549
    iput-object p1, p0, Larl$6;->b:Larl;

    iput-object p2, p0, Larl$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 549
    check-cast p1, Ljava/lang/Void;

    .line 1552
    iget-object v0, p0, Larl$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 549
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Larl$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 557
    return-void
.end method