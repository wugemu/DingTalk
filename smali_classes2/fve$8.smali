.class public final Lfve$8;
.super Ljava/lang/Object;
.source "UserBusinessProfilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfve;
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
        "Lfqv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfve;


# direct methods
.method public constructor <init>(Lfve;)V
    .locals 0
    .param p1, "this$0"    # Lfve;

    .prologue
    .line 199
    iput-object p1, p0, Lfve$8;->a:Lfve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 199
    check-cast p1, Lfqv;

    .line 1202
    iget-object v0, p0, Lfve$8;->a:Lfve;

    .line 2046
    iget-object v0, v0, Lfve;->a:Lfvd$a;

    .line 1202
    invoke-interface {v0, p1}, Lfvd$a;->a(Lfqv;)V

    .line 199
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lfve$8;->a:Lfve;

    .line 1046
    iget-object v0, v0, Lfve;->a:Lfvd$a;

    .line 212
    invoke-interface {v0}, Lfvd$a;->c()V

    .line 213
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 208
    return-void
.end method
