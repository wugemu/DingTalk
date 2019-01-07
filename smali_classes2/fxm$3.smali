.class public final Lfxm$3;
.super Lcmi;
.source "UicMtopHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxm;
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
.field final synthetic a:Lcma;

.field final synthetic b:Lfxm;


# direct methods
.method public constructor <init>(Lfxm;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfxm;

    .prologue
    .line 129
    iput-object p1, p0, Lfxm$3;->b:Lfxm;

    iput-object p2, p0, Lfxm$3;->a:Lcma;

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
    .line 141
    iget-object v0, p0, Lfxm$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lfxm$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lfxm$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lfxm$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method
