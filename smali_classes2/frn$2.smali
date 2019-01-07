.class final Lfrn$2;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrn;->a()V
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
        "Lfws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrn;


# direct methods
.method constructor <init>(Lfrn;)V
    .locals 0
    .param p1, "this$0"    # Lfrn;

    .prologue
    .line 189
    iput-object p1, p0, Lfrn$2;->a:Lfrn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lfws;

    .line 1192
    if-eqz p1, :cond_0

    .line 1193
    invoke-static {}, Lfwr;->a()Lfwr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfwr;->a(Lfws;)V

    .line 189
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 200
    return-void
.end method
