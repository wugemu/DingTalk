.class public final Lftz$8;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftz;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lftz;


# direct methods
.method public constructor <init>(Lftz;)V
    .locals 0
    .param p1, "this$0"    # Lftz;

    .prologue
    .line 237
    iput-object p1, p0, Lftz$8;->a:Lftz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 237
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .line 1240
    iget-object v0, p0, Lftz$8;->a:Lftz;

    .line 2032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 1240
    invoke-interface {v0, p1}, Lfty$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 237
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lftz$8;->a:Lftz;

    .line 1032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 250
    invoke-interface {v0, p1, p2}, Lfty$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 246
    return-void
.end method
