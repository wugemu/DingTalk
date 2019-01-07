.class final Lfxm$1;
.super Lcmi;
.source "UicMtopHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxm;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.method constructor <init>(Lfxm;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfxm;

    .prologue
    .line 69
    iput-object p1, p0, Lfxm$1;->b:Lfxm;

    iput-object p2, p0, Lfxm$1;->a:Lcma;

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
    .line 81
    iget-object v0, p0, Lfxm$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lfxm$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Ljava/lang/String;

    .line 1073
    iget-object v0, p0, Lfxm$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lfxm$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method
