.class final Lhqt$4;
.super Lcmi;
.source "OapiAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqt;->e(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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

.field final synthetic b:Lhqt;


# direct methods
.method constructor <init>(Lhqt;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhqt;

    .prologue
    .line 230
    iput-object p1, p0, Lhqt$4;->b:Lhqt;

    iput-object p2, p0, Lhqt$4;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 238
    iget-object v0, p0, Lhqt$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 230
    check-cast p1, Ljava/lang/String;

    .line 1233
    iget-object v0, p0, Lhqt$4;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 230
    return-void
.end method