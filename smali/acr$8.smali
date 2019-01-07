.class public final Lacr$8;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr;
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
        "Ljava/util/List",
        "<",
        "Labk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lacr;


# direct methods
.method public constructor <init>(Lacr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 1115
    iput-object p1, p0, Lacr$8;->b:Lacr;

    iput-object p2, p0, Lacr$8;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1115
    check-cast p1, Ljava/util/List;

    .line 2118
    iget-object v0, p0, Lacr$8;->b:Lacr;

    invoke-static {v0, p1}, Lacr;->a(Lacr;Ljava/util/List;)Ljava/util/List;

    .line 2119
    iget-object v0, p0, Lacr$8;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1115
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1128
    iget-object v0, p0, Lacr$8;->b:Lacr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacr;->a(Lacr;Ljava/util/List;)Ljava/util/List;

    .line 1129
    iget-object v0, p0, Lacr$8;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1124
    return-void
.end method
