.class public final Lhqf$3;
.super Ljava/lang/Object;
.source "OAuthAccessor.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqf;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhqf$d;

.field final synthetic b:Lhqf;


# direct methods
.method public constructor <init>(Lhqf;Lhqf$d;)V
    .locals 0
    .param p1, "this$0"    # Lhqf;

    .prologue
    .line 96
    iput-object p1, p0, Lhqf$3;->b:Lhqf;

    iput-object p2, p0, Lhqf$3;->a:Lhqf$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    check-cast p1, Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lhqf$3;->a:Lhqf$d;

    invoke-interface {v0, p1}, Lhqf$d;->a(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lhqf$3;->a:Lhqf$d;

    invoke-interface {v0, p1, p2}, Lhqf$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 105
    return-void
.end method