.class public final Lhqf$4;
.super Lcmi;
.source "OAuthAccessor.java"


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
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhqf$c;

.field final synthetic b:Lhqf;


# direct methods
.method public constructor <init>(Lhqf;Lhqf$c;)V
    .locals 0
    .param p1, "this$0"    # Lhqf;

    .prologue
    .line 116
    iput-object p1, p0, Lhqf$4;->b:Lhqf;

    iput-object p2, p0, Lhqf$4;->a:Lhqf$c;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    iget-object v0, p0, Lhqf$4;->a:Lhqf$c;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lhqf$4;->a:Lhqf$c;

    invoke-interface {v0, p1, p2}, Lhqf$c;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 116
    check-cast p1, Ljava/lang/String;

    .line 1120
    iget-object v0, p0, Lhqf$4;->a:Lhqf$c;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lhqf$4;->a:Lhqf$c;

    invoke-interface {v0, p1}, Lhqf$c;->onAuthCodeReceived(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
