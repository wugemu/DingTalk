.class final Lhqf$5;
.super Lcmi;
.source "OAuthAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqf;->a(Ljava/lang/String;Lhqf$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhof;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhqf$a;

.field final synthetic b:Lhqf;


# direct methods
.method constructor <init>(Lhqf;Lhqf$a;)V
    .locals 0
    .param p1, "this$0"    # Lhqf;

    .prologue
    .line 136
    iput-object p1, p0, Lhqf$5;->b:Lhqf;

    iput-object p2, p0, Lhqf$5;->a:Lhqf$a;

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
    .line 148
    iget-object v0, p0, Lhqf$5;->a:Lhqf$a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lhqf$5;->a:Lhqf$a;

    invoke-interface {v0, p1, p2}, Lhqf$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lhof;

    .line 1140
    iget-object v0, p0, Lhqf$5;->a:Lhqf$a;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lhqf$5;->a:Lhqf$a;

    invoke-interface {v0, p1}, Lhqf$a;->a(Lhof;)V

    .line 136
    :cond_0
    return-void
.end method
