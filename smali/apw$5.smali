.class public final Lapw$5;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw;
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
        "Lasd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lapw;


# direct methods
.method public constructor <init>(Lapw;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lapw;

    .prologue
    .line 1068
    iput-object p1, p0, Lapw$5;->b:Lapw;

    iput-object p2, p0, Lapw$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1068
    check-cast p1, Lasd;

    .line 2071
    iget-object v0, p0, Lapw$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2072
    iget-object v0, p0, Lapw$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1082
    iget-object v0, p0, Lapw$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lapw$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1078
    return-void
.end method
