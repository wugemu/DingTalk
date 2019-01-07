.class public final Lapw$6;
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
        "Ljava/lang/Void;",
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
    .line 1090
    iput-object p1, p0, Lapw$6;->b:Lapw;

    iput-object p2, p0, Lapw$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1090
    check-cast p1, Ljava/lang/Void;

    .line 2093
    iget-object v0, p0, Lapw$6;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lapw$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1104
    iget-object v0, p0, Lapw$6;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lapw$6;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1100
    return-void
.end method
