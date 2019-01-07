.class final Leyc$a$1$1;
.super Lcmi;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyc$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyc$a$1;


# direct methods
.method constructor <init>(Leyc$a$1;)V
    .locals 0
    .param p1, "this$2"    # Leyc$a$1;

    .prologue
    .line 1284
    iput-object p1, p0, Leyc$a$1$1;->a:Leyc$a$1;

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
    .line 1291
    iget-object v0, p0, Leyc$a$1$1;->a:Leyc$a$1;

    iget-object v0, v0, Leyc$a$1;->a:Leyc$a;

    .line 2257
    invoke-virtual {v0}, Leyc$a;->a()V

    .line 1292
    return-void
.end method

.method public final bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1284
    return-void
.end method
