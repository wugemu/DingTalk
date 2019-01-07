.class Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;
.super Ljava/lang/Object;
.source "Async4jInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;->this$0:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;->this$0:Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;

    invoke-static {v0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->access$000(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V

    .line 58
    return-void
.end method
